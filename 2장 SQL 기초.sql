# 날짜 : 2024/01/02
# 이름 : 이승윤
# 내용 : 2장 SQL 기초

# 실습 2-1
create table `user1`(
`uid` varchar(10),
`name` varchar(10),
`hp` char(13),
`age` int
);
drop table`user1`;
# 실습 2-2
insert into `user1` values('a101','김유신','010-1234-1111',25);
insert into `user1` values('a102','김춘추','010-1234-2222',23);
insert into `user1` values('a103','장보고','010-1234-3333',32);
insert into `user1` (`uid`,`name`,`age`)values('a104','강감찬',45);
insert into `user1` set `uid`='a105', `name`='이순신',`hp`='010-1234-5555';

# 실습 2-3
select * from `user1`;
select * from `user1` where `uid`='a101';
select * from `user1` where `name`='김춘추';
select * from `user1` where `age` < 30;
select * from `user1` where `age` >= 30;
select `uid`, `name`, `age` from `user1`;

# 실습 2-4
update `user1` set `hp`='010-1234-4444' where `uid`='a104';
update `user1` set `age`=51 where `uid`='a105';
select * from `user1`;
update `user1` set `hp`='010-1234-1001', `age`=27 where `uid`='a101';
select * from `user1`;

# 실습 2-5
delete from `user1` where `uid`='a101';
delete from `user1` where `uid`='a102' and `age`=25;
delete from `user1` where `age` >= 30;

# 실습 2-6
alter table `user1` add `gender` tinyint;
alter table `user1` add `birth` char(10) after `name`;
alter table `user1` modify `gender` char(1);
alter table `user1` modify `age` tinyint;
alter table `user1` drop `gender`;
# 실습 2-7
create table `user1copy` like `user1`;
insert into `user1copy` select * from `user1`;
# 실습 2-8
create table `TblUser`(
`user_id` varchar(10),
`user_name` varchar(10),
`user_hp` char(13),
`user_age` int,
`user_addr` varchar(20)
);
insert into `TblUser` values('p101','김유신','010-1234-1001',25,'경남 김해시');
insert into `TblUser` values('p102','김춘추','010-1234-1002',23,'경남 경주시');
insert into `TblUser` (`user_id`,`user_name`,`user_age`,`user_addr`)values('p103','장보고',31,'전남 완도군');
insert into `TblUser` (`user_id`,`user_name`,`user_addr`)values('p104','강감찬','서울시 중구');
insert into `TblUser` (`user_id`,`user_name`,`user_hp`,`user_age`)values('p105','이순신','010-1234-1005',50);


create table `TblProduct`(
`prod_no` int,
`prod_name` varchar(10),
`prod_price` int,
`prod_stock` int,
`prod_company` varchar(20),
`prod_date` date
);
insert into `TblProduct` values(1001,'냉장고',800000,25,'LG전자','2022-01-06');
insert into `TblProduct` values(1002,'노트북',1200000,120,'삼성전자','2022-01-07');
insert into `TblProduct` values(1003,'모니터',350000,35,'LG전자','2022-01-13');
insert into `TblProduct` values(1004,'세탁기',1000000,80,'삼성전자','2022-01-01');
insert into `TblProduct` values(1005,'컴퓨터',1500000,20,'삼성전자','2022-10-01');
insert into `TblProduct` (`prod_no`,`prod_name`,`prod_price`,`prod_stock`)values('1006','휴대폰',950000,102);

# 실습 2-9
select * from `tbluser`;
select `user_name` from `tbluser`;
select `user_name`, `user_hp` from `tbluser`;
select * from `tbluser` where `user_id`='p102';
select * from `tbluser` where `user_id`='p104' or `user_id` = 'p105';
select * from `tbluser` where `user_addr`='부산시 금정구';
select * from `tbluser` where `user_age`>30;
select * from `tbluser` where `user_hp` is null;

update `tbluser` set `user_age` = 42 where `user_id`='p104';
update `tbluser` set `user_addr`='부산시 진구' where `user_id`='p105';
delete from `tbluser` where `user_id`='p103';


select * from `tblproduct`;
select `prod_name` from `tblProduct`;
select `prod_name`, `prod_company`, `prod_price` from `tblproduct`;
select * from `tblproduct` where `prod_company` = 'LG전자';
select * from `tblproduct` where `prod_company`='삼성전자';

update `tblproduct` set `prod_company`='삼성전자',`prod_date`='2024-01-01' where `prod_no`=1006;



