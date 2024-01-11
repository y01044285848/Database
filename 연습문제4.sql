# 4-1
use bookstore;
# 4-2
create table `customer`(
`custid` int auto_increment primary key,
`name` varchar(10) not null,
`address` varchar(20),
`phone` varchar(13)
);

create table `book`(
`bookid` int primary key,
`bookname` varchar(20) not null,
`publisher` varchar(20) not null,
`price` int
);

create table `order`(
`orderid` int auto_increment primary key,
`custid` int not null,
`bookid` int not null,
`saleprice` int not null,
`orderdate` date not null
);
# 4-3
insert into `customer` values(null,'박지성','영국 맨체스타','000-5000-0001');
insert into `customer` values(null,'김연아','대한민국 서울','000-6000-0001');
insert into `customer` values(null,'장미란','대한민국 강원도','000-7000-0001');
insert into `customer` values(null,'추신수','미국 클리블랜드','000-8000-0001');
insert into `customer` values(null,'박세리','대한민국 대전',null);

drop table `book`;
insert into `book` values(1,'축구의 역사','굿스포츠',7000);
insert into `book` values(2,'축구아는 여자','나무수',13000);
insert into `book` values(3,'축구의 이해','대한미디어',22000);
insert into `book` values(4,'골프 바이블','대한미디어',35000);
insert into `book` values(5,'피겨 교본','굿스포츠',8000);
insert into `book` values(6,'역도 단계별기술','굿스포츠',6000);
insert into `book` values(7,'야구의 추억','이상미디어',20000);
insert into `book` values(8,'야구를 부탁해','이상미디어',13000);
insert into `book` values(9,'올림픽 이야기','삼성당',7500);
insert into `book` values(10,'Olympic Champions','pearson',13000);

insert into `order` values(1,1,1,6000,'2014-07-01');
insert into `order` values(2,1,3,21000,'2014-07-03');
insert into `order` values(3,2,5,8000,'2014-07-03');
insert into `order` values(4,3,6,6000,'2014-07-04');
insert into `order` values(5,4,7,20000,'2014-07-05');
insert into `order` values(6,1,2,12000,'2014-07-07');
insert into `order` values(7,4,8,13000,'2014-07-07');
insert into `order` values(8,3,10,12000,'2014-07-08');
insert into `order` values(9,2,10,7000,'2014-07-09');
insert into `order` values(10,3,8,13000,'2014-07-10');

# 4-4
select `custid`,`name`,`address` from `customer`;
# 4-5
select `bookname`,`price` from `book`;
# 4-6
select `price`,`bookname` from `book`;
# 4-7
select * from `book`;
# 4-8
select `publisher` from `book`;
# 4-9
select distinct `publisher` from `book`;
# 4-10
select * from `book` where `price` >= 20000;
# 4-11
select * from `book` where `price` < 20000;
# 4-12
select * from `book` where `price` between 10000 and 20000;
# 4-13
select `bookid`,`bookname`,`price` from `book` where `price` between 15000 and 30000;
# 4-14
select * from `book` where `bookid`=2 or `bookid`=3 or `bookid`=5;
# 4-15
select * from `book` where `bookid`%2 = 0;
# 4-16
select * from `customer` where `name` like '박%';
# 4-17
select * from `customer` where `address` like '대한민국%';
# 4-18
select * from `customer` where `phone` is not null;
# 4-19
select * from `book` where `publisher`='굿스포츠' or `publisher`='대한미디어';
# 4-20
select `publisher` from `book` where `bookname` = '축구의 역사';
# 4-21
select `publisher` from `book` where `bookname` like '%축구%';
# 4-22
select * from `book` where `bookname` like'_구%';
# 4-23
select * from `book` where `bookname` like '%축구%' and `price` >= 20000;
# 4-24
select * from `book` order by `bookname`;
# 4-25
select * from `book` order by `price`,`bookname`;
# 4-26
select * from `book` order by `price` desc,`publisher`;
# 4-27
select * from `book` order by `price` desc limit 3;
# 4-28
select * from `book` order by `price` asc limit 3;
# 4-29
select sum(`saleprice`) as '총판매액' from `order`;
# 4-30
select sum(`saleprice`) as '총판매액', avg(`saleprice`) as '평균값', min(`saleprice`) as '최저가', max(`saleprice`) '최고가' from `order`;
# 4-31
select count(*) from `order`;
# 4-32
select `bookid`, replace(`bookname`,'야구','농구'),`publisher`,`price` from `book`;
# 4-33
select `custid`, count(*) from `order` where `saleprice` >= 8000 group by `custid` having count(*) >= 2;
# 4-34
select * from `customer` as a join `order` as b on a.custid = b.custid;
# 4-35
select * from `customer` as a join `order` as b on a.custid = b.custid order by a.`custid`;
# 4-36
select a.`name`, b.`saleprice` from `customer` as a join `order` as b on a.custid = b.custid;
# 4-37
select a.`name`, sum(b.`saleprice`) from `customer` as a join `order` as b on a.custid = b.custid group by a.`custid` order by a.`name`;
# 4-38
select a.`name`, c.`bookname` from `customer` as a 
join `order` as b on a.custid = b.custid
join `book` as c on b.`bookid` = c.`bookid`
order by a.`custid`;
# 4-39
select a.`name`, c.`bookname` from `customer` as a 
join `order` as b on a.custid = b.custid
join `book` as c on b.`bookid` = c.`bookid`
where c.`price` = 20000;
# 4-40
select b.`name`, a.`saleprice` from `order` as a
right join `customer` as b on a.`custid` = b.`custid`;
# 4-41
select sum(`saleprice`) as '총매출' from `order` as a
join `customer` as b on a.`custid` = b.`custid`
where b.`name` = '김연아';
# 4-42
select `bookname` from `book` where `price` = (select max(`price`) from `book`);
# 4-43
select b.`name`, a.`saleprice` from `order` as a
right join `customer` as b on a.`custid` = b.`custid`
where `saleprice` is null;
# 4-44
insert into `book` values(11,'스포츠의학','한솔의학서적',null);
select * from `book`;
# 4-45
update `customer` set `address` = '대한민국 부산' where `custid` = 5;
select * from `customer`;
# 4-46
delete from `customer` where `custid` = 5;
select * from `customer`;