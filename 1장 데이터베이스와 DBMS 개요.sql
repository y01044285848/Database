/*
    날짜 : 2024-03-04
    이름 : 이승윤
    내용 : 1장 데이터베이스와 DBMS 개요
*/

-- 실습1-2
CREATE TABLE TYPE_TEST_NUMBER(
num1 NUMBER,
num2 NUMBER(2),
num3 NUMBER(3,1),
num4 NUMBER(4,2),
num5 NUMBER(5,6)
);

select * from type_test_number;
-- num1 NUMBER
insert into TYPE_TEST_NUMBER (num1) values(1);
insert into TYPE_TEST_NUMBER (num1) values(123);
insert into TYPE_TEST_NUMBER (num1) values(123.74);
insert into TYPE_TEST_NUMBER (num1) values(123.12345);

--num2 NUMBER(2)
insert into TYPE_TEST_NUMBER (num2) values(12);
insert into TYPE_TEST_NUMBER (num2) values(123);
insert into TYPE_TEST_NUMBER (num2) values(1.2);
insert into TYPE_TEST_NUMBER (num2) values(1.23);
insert into TYPE_TEST_NUMBER (num2) values(12.34567);
insert into TYPE_TEST_NUMBER (num2) values(12.56789);
insert into TYPE_TEST_NUMBER (num2) values(123.56789);

--num3 NUMBER(3,1)
insert into TYPE_TEST_NUMBER (num3) values (12);
insert into TYPE_TEST_NUMBER (num3) values (123);
insert into TYPE_TEST_NUMBER (num3) values (12.1);
insert into TYPE_TEST_NUMBER (num3) values (12.1234);
insert into TYPE_TEST_NUMBER (num3) values (12.56789);
insert into TYPE_TEST_NUMBER (num3) values (123.56789);

--num4 NUMBER(4,2)
--num5 NUMBER(5,6)

CREATE TABLE TYPE_TEST_CHAR (
    char1 CHAR(1),
    char2 CHAR(2),
    char3 CHAR(3),
    vchar1 VARCHAR2(1),
    vchar2 VARCHAR2(2),
    vchar3 VARCHAR2(3),
    nvchar1 NVARCHAR2(1),
    nvchar2 NVARCHAR2(2),
    nvchar3 NVARCHAR2(3)
);

//CHAR
insert into TYPE_TEST_CHAR (char1) values ('A');
insert into TYPE_TEST_CHAR (char1) values ('가');

//VARCHAR2
insert into TYPE_TEST_CHAR (vchar1) values ('A');
insert into TYPE_TEST_CHAR (vchar2) values ('AB');
insert into TYPE_TEST_CHAR (vchar3) values ('가');

//NVARCHAR2
insert into TYPE_TEST_CHAR (nvchar1) values ('A');
insert into TYPE_TEST_CHAR (nvchar2) values ('AB');
insert into TYPE_TEST_CHAR (nvchar3) values ('가나다');