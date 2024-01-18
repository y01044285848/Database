# 날짜 : 2024/01/18
# 이름 : 이승윤
# 내용 : 8장 트랜잭션과 병행 제어
use bank;
# 실습 8-1
# 트랜잭션 시작
start transaction;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
where `a_no` = '101-11-1001';
update `bank_account` set `a_balance` = `a_balance` + 10000
where `a_no` = '101-11-1003';
commit;
# 실습 8-2
start transaction;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
where `a_no` = '101-11-1001';
update `bank_account` set `a_balance` = `a_balance` + 10000
where `a_no` = '101-11-1003';
rollback;
# 실습 8-3
select @@autocommit;
set autocommit = 0;
update `bank_account` set `a_balance` = `a_balance` - 10000
where `a_no` = '101-11-1001';
select * from `bank_account`;
# 실습 8-3
start transaction;
select * from `bank_account`;
update `bank_account` set `a_balance` = `a_balance` - 10000
where `a_no` = '101-11-1001';
commit;