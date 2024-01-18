# 날짜 : 2024/01/18
# 이름 : 김철학
# 내용 : 7장 정규화 실습
use studydb;
create table`BookOrder`(
`orderNo` int,
`orderDate` date,
`userId` varchar(10),
`userName` varchar(10),
`userAddr` varchar(50),
`bookNo` int,
`bookName` varchar(20),
`count` int,
`price` int
);

insert into `bookorder` values(10001,now(),'a101','김유신','김해',101,'프로그래밍',1,28000);
insert into `bookorder` values(10002,now(),'a102','김춘추','경주',101,'프로그래밍',1,28000);
insert into `bookorder` values(10002,now(),'a102','김춘추','경주',102,'자료구조',2,32000);
insert into `bookorder` values(10003,now(),'a103','장보고','완도',102,'자료구조',2,32000);
insert into `bookorder` values(10004,now(),'a104','강감찬','서울',110,'데이터베이스',1,25000);
insert into `bookorder` values(10005,now(),'a105','이순신','서울',110,'데이터베이스',1,25000);
insert into `bookorder` values(10005,now(),'a105','이순신','서울',102,'자료구조',1,32000);
select * from `bookorder`;

use bookorder;
insert into `book` values(101,'프로그래밍');
insert into `book` values(102,'자료구조');
insert into `book` values(110,'데이터베이스');

insert into `user` values('a101','김유신','김해');
insert into `user` values('a102','김춘추','경주');
insert into `user` values('a103','장보고','완도');
insert into `user` values('a104','강감찬','서울');
insert into `user` values('a105','이순신','서울');

insert into `userorder` values(10001,'a101',now());
insert into `userorder` values(10002,'a102',now());
insert into `userorder` values(10003,'a103',now());
insert into `userorder` values(10004,'a104',now());
insert into `userorder` values(10005,'a105',now());

insert into `order` values(101,10001,1,28000);
insert into `order` values(101,10002,1,28000);
insert into `order` values(102,10002,2,32000);
insert into `order` values(102,10003,2,32000);
insert into `order` values(110,10004,1,25000);
insert into `order` values(110,10005,1,25000);
insert into `order` values(102,10005,1,32000);