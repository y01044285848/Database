# 날짜 : 2024/01/12
# 이름 : 이승윤
# 내용 : shop 모델링 실습
use `new_schema1`;
insert into `customer` values('c101','김유신','010-1234-1001','경남 김해시','2023-01-01');
insert into `customer` values('c102','김춘추','010-1234-1002','경남 경주시','2023-01-02');
insert into `customer` values('c103','장보고','010-1234-1003','전남 완도군','2023-01-03');
insert into `customer` values('c104','강감찬','010-1234-1004','서울시 관악구','2023-01-04');
insert into `customer` values('c105','이순신','010-1234-1005','부산시 금정구','2023-01-05');

insert into `product` values(1,'새우깡',5000,1500,'농심');
insert into `product` values(2,'초코파이',2500,2500,'오리온');
insert into `product` values(3,'포카칩',3600,1700,'오리온');
insert into `product` values(4,'양파링',1250,1800,'농심');
insert into `product` values(5,'죠리퐁',2200,null,'크라운');

insert into `order` set `orderId` = 'c102', `orderProduct`=3,`orderCount` = 2, `orderdate` = '2023-01-01 13:15:10';
insert into `order` set `orderId` = 'c101', `orderProduct`=4,`orderCount` = 1, `orderdate` = '2023-01-01 13:15:12';
insert into `order` set `orderId` = 'c102', `orderProduct`=1,`orderCount` = 1, `orderdate` = '2023-01-01 13:15:14';
insert into `order` set `orderId` = 'c103', `orderProduct`=6,`orderCount` = 5, `orderdate` = '2023-01-01 13:15:16';
insert into `order` set `orderId` = 'c105', `orderProduct`=2,`orderCount` = 1, `orderdate` = '2023-01-01 13:15:18';
