# 날짜 : 2024/01/02
# 이름 : 이승윤
# 내용 : 1장 데이터베이스 생성과 사용자 관리

# 실습 1-1
CREATE DATABASE `studydb2`;
drop database `studydb2`;

# 실습 1-2
create user 'sysh58'@'%' identified by '1234';
grant all privileges on `studydb2`. * to 'sysh58'@'%';
flush privileges;
# 실습 1-3
alter user 'sysh58'@'%' identified by 'abc1234';
drop user 'sysh58'@'%';
flush privileges;