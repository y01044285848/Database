# 날짜 : 2024/01/10
# 이름 : 이승윤
# 내용 : SQL 연습문제3

# 3-1
use college;

# 3-2
create table `student`(
stdNo varchar(8) primary key,
stdName varchar(20) not null,
stdHp varchar(13) unique key not null,
stdYear int not null,
stdAddress varchar(100)
);

create table `lecture`(
lecNo int primary key,
lecName varchar(20) not null,
lecCredit int not null,
lecTime int not null,
lecClass varchar(10)
);
drop table `register`;
create table `Register`(
regStdNo char(8),
regLecNo int not null,
regMidScore int,
regFinalScore int,
regTotalScore int,
regGrade char(1)
);

# 3-3
insert into `student` values('20201016','김유신','010-1234-1001',3,null);
insert into `student` values('20201126','김춘추','010-1234-1002',3,"경상남도 경주시");
insert into `student` values('20210216','장보고','010-1234-1003',2,"전라남도 완도시");
insert into `student` values('20210326','강감찬','010-1234-1004',2,"서울시 영등포구");
insert into `student` values('20220416','이순신','010-1234-1005',1,"부산시 부산진구");
insert into `student` values('20220521','송상형','010-1234-1006',1,"부산시 동래구");

insert into `Lecture` values(159,'인지행동심리학',3,40,'본304');
insert into `Lecture` values(167,'운영체제론',3,25,'본B05');
insert into `Lecture` values(234,'중급 영문법',3,20,'본201');
insert into `Lecture` values(239,'세법개론',3,40,'본204');
insert into `Lecture` values(248,'빅데이터 개론',3,20,'본B01');
insert into `Lecture` values(253,'컴퓨팅사고와 코딩',2,10,'본B02');
insert into `Lecture` values(349,'사회복지 마케팅',2,50,'본301');

insert into `register` values('20201126',234,null,null,null,null);
insert into `register` values('20201016',248,null,null,null,null);
insert into `register` values('20201016',253,null,null,null,null);
insert into `register` values('20201126',239,null,null,null,null);
insert into `register` values('20210216',349,null,null,null,null);
insert into `register` values('20210326',349,null,null,null,null);
insert into `register` values('20201016',167,null,null,null,null);
insert into `register` values('20220416',349,null,null,null,null);

# 3-4
select * from `lecture`;
# 3-5
select * from `student`;
# 3-6
select * from `register`;
# 3-7
select * from `student` where `stdYear` = 3;
# 3-8
select * from `lecture` where `lecCredit` = 2;
# 3-9
update `register` set `regMidScore` = 36, `regFinalScore` = 42 where `regStdNo` = '20201126'and`reglecno`=234;
update `register` set `regMidScore` = 24, `regFinalScore` = 62 where `regStdNo` = '20201016'and`reglecno`=248;
update `register` set `regMidScore` = 28, `regFinalScore` = 40 where `regStdNo` = '20201016'and`reglecno`=253;
update `register` set `regMidScore` = 37, `regFinalScore` = 57 where `regStdNo` = '20201126'and`reglecno`=239;
update `register` set `regMidScore` = 28, `regFinalScore` = 68 where `regStdNo` = '20210216'and`reglecno`=349;
update `register` set `regMidScore` = 16, `regFinalScore` = 65 where `regStdNo` = '20210326'and`reglecno`=349;
update `register` set `regMidScore` = 18, `regFinalScore` = 38 where `regStdNo` = '20201016'and`reglecno`=167;
update `register` set `regMidScore` = 25, `regFinalScore` = 58 where `regStdNo` = '20220416'and`reglecno`=349;
# 3-10
update `register` set
`regTotalScore` = `regMidScore` + `regFinalScore`,
`regGrade` = if(`regTotalScore` >= 90, 'A',
			if(`regTotalScore` >= 80, 'B',
            if(`regTotalScore` >= 70, 'C',
            if(`regTotalScore` >= 60, 'D', 'F'))));
# 3-11
select * from `register` order by `regtotalscore`desc;
# 3-12
select * from `register` where `reglecno` = 349 order by `regtotalscore`desc;
# 3-13
select * from `lecture` where `lectime` >=30;
# 3-14
select `lecname`, `lecclass` from `lecture`;
# 3-15
select `stdno`, `stdname` from `student`;
# 3-16
select * from `student` where `stdaddress` is null;
# 3-17
select * from `student` where `stdaddress` like '부산시%';
# 3-18
select * from `student` as a left join `register` as b on a.stdno = b.regstdno;
# 3-19
select a.stdno, a.stdname, b.regmidscore, b.regfinalscore, b.regtotalscore, b.reggrade
from `student` as a, `register` as b where a.stdno = b.regstdno;
# 3-20
select `stdname`,`stdno`,`reglecno`
from `student` as a
join `register` as b
where a.stdno = b.regstdno and reglecno = 349;
# 3-21
select
`stdno`,
`stdname`,
count(`stdno`)as'수강신청건수',
sum(`regtotalscore`)as '종합점수',
sum(`regtotalscore`) / count(`stdno`) as '평균'
from `student` as a
join `register` as b
on a.stdno = b.regstdno
group by stdno;
# 3-22
select * from `register` as a
join `lecture` as b
on a.reglecno = b.lecno;
# 3-23
select
`regstdno`,
`reglecno`,
`lecname`,
`regmidscore`,
`regfinalscore`,
`regtotalscore`,
`regGrade`
from `register` as a, `lecture` as b where a.reglecno = b.lecno;
# 3-24
select count(*)as '사회복지 마케팅 수강 신청 건수',
avg(`regtotalscore`) as '사회복지 마케팅 평균'
from `register` as a join `lecture` as b on a.reglecno = b.lecno
group by lecno having lecno = 349;
# 3-25
select
`regstdno`,
`lecname`
from `register` as a join `lecture` as b on a.reglecno = b.lecno
where `reggrade` = 'A';
# 3-26
select * from `student` as a
join `register` as b on b.regstdno = a.stdno
join `lecture` as c on c.lecno = b.reglecno;
# 3-27
select
`stdno`,
`stdname`,
`lecno`,
`lecname`,
`regmidscore`,
`regfinalscore`,
`regtotalscore`,
`reggrade`
from `student` as a
join `register` as b on b.regstdno = a.stdno
join `lecture` as c on c.lecno = b.reglecno
order by reggrade, regfinalscore desc;
# 3-28
select
`stdno`,
`stdname`,
`lecname`,
`regtotalscore`,
`reggrade`
from `student` as a
join `register` as b on b.regstdno = a.stdno
join `lecture` as c on c.lecno = b.reglecno
where reggrade = 'F';
# 3-29
select
`stdno`,
`stdname`,
sum(`leccredit`)as '이수학점'
from `student` as a
join `register` as b on b.regstdno = a.stdno
join `lecture` as c on c.lecno = b.reglecno
where reggrade != 'F'
group by stdno;
# 3-30
select
`stdno`,
`stdname`,
group_concat(`lecname`) as '신청과목',
group_concat(if(`regtotalscore` >= 60, `lecname`, null)) as '이수과목'
from `student` as a
join `register` as b on b.regstdno = a.stdno
join `lecture` as c on c.lecno = b.reglecno
group by stdno;