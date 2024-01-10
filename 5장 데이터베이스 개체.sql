# 날짜 : 2024/01/08
# 이름 : 이승윤
# 내용 : 5장 데이터베이스 개체

#실습 5-1
show index from `user1`;
show index from `user2`;
show index from `user3`;

#실습 5-2
create index `idx_user1_uid` on `user1`(`uid`);
analyze table `user1`;

#실습 5-3
drop index idx_user1_uid on `user1`;

#실습 5-4
create view `vw_user1` as (select `name`,`hp`,`age` from `user1`);
select * from `vw_user1`;
create view `vw_user4_age_under30` as (select * from `user4` where `age` < 30);
create view `vw_member_with_sales` as (
select
a.`uid` as '직원아이디',
b.`name` as '직원이름',
b.`pos` as '직급',
c.`name` as '부서명',
a.`year` as '매출년도',
a.`month` as '월',
a.`sale` as '매출액'
from `sales` as a
join `member` as b on a.uid = b.uid
join `department` as c on b.dep = c.depno
);

#실습 5-5
select * from `vw_user1`;
select * from `vw_user2_age_under30`;

#실습 5-6
drop view `vw_user1`;
drop view `vw_user4_age_under30`;

#실습 5-7
delimiter $$
create procedure proc_test1()
begin
select * from `member`;
select * from `department`;
end $$
delimiter ;

call proc_test1();

#실습 5-8
select * from `member`;
delimiter $$
create procedure proc_test2(in _username varchar(10))
begin
select * from `member` where `name`= _username;
end $$
delimiter ;
call proc_test2('김유신');


delimiter $$
create procedure proc_test3(in _pos varchar(10), in _dep tinyint)
begin
select * from `member` where `pos`=_pos and `dep` = _dep;
end $$
delimiter ;
call proc_test3('차장', 101);

delimiter $$
create procedure proc_test4(in _pos varchar(10), out _count int)
begin
select count(*) into _count from `member` where `pos`=_pos;
end $$
delimiter ;

call proc_test4('대리', @_count);
select concat('_count : ', @_count)

#실습 5-9
delimiter $$
create procedure proc_test5(in _name varchar(10))
begin
declare userid varchar(10);
select `uid` into userid from `member` where `name` = _name;
select * from `sales` where `uid`=userid;
end $$
delimiter ;
call proc_test5('김유신');

delimiter $$
create procedure proc_test6()
begin
declare num1 int;
declare num2 int;
set num1 = 1;
set num2 = 2;
if(num1 > num2) then
select 'num1이 num2보다 크다.' as'결과2';
else
select 'num1이 num2보다 작다.' as'결과2';
end if;
end $$
delimiter ;
call proc_test6();

delimiter $$
create procedure proc_test7()
begin
declare sum int;
declare num int;
set sum = 0;
set num = 1;
while(num<=10) do
set sum = sum + num;
set num = num + 1;
end while;
select sum as '1부터 10까지 합계';
end $$
delimiter ;
call proc_test7();


#실습 5-10

delimiter $$
create procedure proc_test8()
begin
declare total int default 0;
declare price int;
declare endofrow boolean default false;

declare salescursor cursor for
select `sale` from `sales`;
declare continue handler
for not found set endofrow = true;

open salescursor;

cursor_loop: loop
fetch salescursor into price;

if endofrow then
leave cursor_loop;
end if;

set total = total + price;
end loop;

select total as '전체합계';

close salescursor;
end $$
delimiter ;

call proc_test8();


#실습 5-11
delimiter $$
create function func_test1(_userid varchar(10)) returns int
begin
declare total int;
select sum(`sale`) into total from `sales` where `uid` = _userid;
return total;
end $$
delimiter ;

select func_test1('a101');

delimiter $$
create function func_test2(_sale int) returns double
begin
declare bonus double;
if(_sale >= 100000) then
set bonus = _sale * 0.1;
else
set bonus = _sale * 0.05;
end if;

return bonus;
end $$
delimiter ;

select `uid`,`year`,`month`,`sale`, func_test2(`sale`)as `bonus` from `sales`;

#실습 5-1
#실습 5-1