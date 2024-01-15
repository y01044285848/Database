# 날짜 : 2024/01/15
# 이름 : 이승윤
# 내용 : University모델링 실습

use `university`;
# 학과 insert
insert into `departments` values(10,'국어국문학과','051-510-1010');
insert into `departments` values(11,'영어영문학과','051-510-1011');
insert into `departments` values(20,'경영학과','051-510-1020');
insert into `departments` values(21,'경제학과','051-510-1021');
insert into `departments` values(22,'정치외교학과','051-510-1022');
insert into `departments` values(23,'사회복지학과','051-510-1023');
insert into `departments` values(30,'수학과','051-510-1030');
insert into `departments` values(31,'통계학과','051-510-1031');
insert into `departments` values(32,'생명과학과','051-510-1032');
insert into `departments` values(40,'기계공학과','051-510-1040');
insert into `departments` values(41,'전자공학과','051-510-1041');
insert into `departments` values(42,'컴퓨터공학과','051-510-1042');
# 교수 insert
insert into `professors` values('p10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into `professors` values('p10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into `professors` values('p11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into `professors` values('p11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
insert into `professors` values('p11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into `professors` values('p22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
insert into `professors` values('p23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
insert into `professors` values('p31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into `professors` values('p31104',31,'심사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into `professors` values('p40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into `professors` values('p40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
insert into `professors` values('p42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

# 학생 insert
insert into `students` values('20101001',10,'p10101','정우성','760121-1234567','010-1101-7601',null,'서울');
insert into `students` values('20101002',10,'p10101','이정재','750611-1234567','010-1102-7506',null,'서울');
insert into `students` values('20111011',11,'p11103','전지현','890530-1234567','010-1103-8905','jjh@naver.com','대전');
insert into `students` values('20111013',11,'p11103','이나영','790416-1234567','010-2101-7904','lee@naver.com','대전');
insert into `students` values('20111014',11,'p11104','원빈','660912-1234567','010-2104-6609','one@daum.net','대전');
insert into `students` values('21221010',22,'p22110','장동건','790728-1234567','010-3101-7907','jang@naver.com','대구');
insert into `students` values('21231002',23,'p23102','고소영','840615-1234567','010-4101-8406','goso@daum.net','대구');
insert into `students` values('22311011',31,'p31104','김연아','651021-1234567','010-5101-6510','yuna@daum.net','대구');
insert into `students` values('22311014',31,'p31104','유재석','721128-1234567','010-6101-7211',null,'부산');
insert into `students` values('22401001',40,'p40101','강호동','920907-1234567','010-7103-9209',null,'부산');
insert into `students` values('22401002',40,'p40101','조인성','891209-1234567','010-7104-8912','join@gmail.com','광주');
insert into `students` values('22421003',42,'p42103','강동원','770314-1234567','010-8101-7703','dong@naver.com','광주');

# 강좌 insert
insert into `lectures` values('101001','p10101','대학 글쓰기',2,10,'본102');
insert into `lectures` values('101002','p10102','한국어음운론',3,30,'본102');
insert into `lectures` values('101003','p10102','한국현대문학사',3,30,'본103');
insert into `lectures` values('111011','p11103','중세영문학',3,25,'본201');
insert into `lectures` values('111012','p11104','영미시',3,25,'본201');
insert into `lectures` values('231110','p23102','사회복지학개론',1,8,'별관103');
insert into `lectures` values('311002','p31101','통계한의 이해',2,16,'별관303');
insert into `lectures` values('311003','p31104','기초 통계학',3,26,'별관303');
insert into `lectures` values('401019','p40101','기계역학',3,36,'공학관 102');
insert into `lectures` values('421012','p42103','데이터베이스',3,32,'공학관 103');

# 수강 insert
insert into `register` values('20101001','101001','p10101',null,null,null,null,null,null);
insert into `register` values('20101001','101002','p10102',null,null,null,null,null,null);
insert into `register` values('20111013','111011','p11103',null,null,null,null,null,null);
insert into `register` values('21231002','231110','p23102',null,null,null,null,null,null);
insert into `register` values('22401001','401019','p40101',null,null,null,null,null,null);
insert into `register` values('22401001','421012','p42103',null,null,null,null,null,null);
insert into `register` values('20101001','101003','p10102',null,null,null,null,null,null);
insert into `register` values('22421003','311003','p31104',null,null,null,null,null,null);
insert into `register` values('22421003','421012','p42103',null,null,null,null,null,null);
insert into `register` values('20111013','111012','p11104',null,null,null,null,null,null);

# 문제1
select `stdno`, `stdname`,`stdhp`,s.`depno`,`depname`
from `students` as s
join `departments` as d on s.`depno` = d.`depno`;
# 문제2
select `prono`,`proname`,`prohp`,p.`depno`,`depname`
from `professors` as p
join `departments` as d on p.`depno` = d.`depno`;
# 문제3
select `lecno`,`lecname`,`proname`,`prohp`
from `lectures` as l
join `professors` as p on p.`prono` = l.`prono`;
# 문제4
select `lecno`,`lecname`,p.`prono`,`prohp`,p.`depno`,`depname`
from `professors` as p
join `lectures` as l on p.`prono` = l.`prono`
join `departments` as d on p.`depno` = d.`depno`;
# 문제5
select r.`stdno`,`stdname`,d.`depno`,d.`depname`,r.`prono`,`proname`
from `register`as r
join `students` as s on s.`stdno` = r.`stdno`
join `professors` as p on p.`prono` = r.`prono`
join `departments` as d on p.`depno` = d.`depno`;
# 문제6
select * from `register`;
update `register` set `regattenscore` = 51, `regMidScore` = 36, `regFinalScore` = 42 where `StdNo` = '20101001'and`lecno`=101001;
update `register` set `regattenscore` = 43, `regMidScore` = 24, `regFinalScore` = 62 where `StdNo` = '20101001'and`lecno`=101002;
update `register` set `regattenscore` = 80, `regMidScore` = 90, `regFinalScore` = 45 where `StdNo` = '20111013'and`lecno`=111011;
update `register` set `regattenscore` = 67, `regMidScore` = 80, `regFinalScore` = 57 where `StdNo` = '21231002'and`lecno`=231110;
update `register` set `regattenscore` = 18, `regMidScore` = 28, `regFinalScore` = 68 where `StdNo` = '22401001'and`lecno`=401019;
update `register` set `regattenscore` = 71, `regMidScore` = 16, `regFinalScore` = 65 where `StdNo` = '22401001'and`lecno`=421012;
update `register` set `regattenscore` = 90, `regMidScore` = 95, `regFinalScore` = 85 where `StdNo` = '20101001'and`lecno`=101003;
update `register` set `regattenscore` = 38, `regMidScore` = 25, `regFinalScore` = 58 where `StdNo` = '22421003'and`lecno`=311003;
update `register` set `regattenscore` = 90, `regMidScore` = 77, `regFinalScore` = 78 where `StdNo` = '22421003'and`lecno`=421012;
update `register` set `regattenscore` = 80, `regMidScore` = 50, `regFinalScore` = 80 where `StdNo` = '20111013'and`lecno`=111012;

update `register` set 
`regattenscore` = ceil(rand()*100),
`regmidscore` = ceil(rand()*100),
`regfinalscore` = ceil(rand()*100);
# 문제7
update `register` set
`regTotal` = (`regattenscore` + `regMidScore` + `regFinalScore`) / 3;
# 문제8
update `register` set
`regGrade` = if(`regTotal` >= 90, 'A',
			if(`regTotal` >= 80, 'B',
            if(`regTotal` >= 70, 'C',
            if(`regTotal` >= 60, 'D', 'F'))));
# 문제9
select max(`regtotal`) from `register`;
select * from `register` order by `regTotal` desc limit 1;
# 문제10
select avg(`regtotal`) from `register` as r
join `students` as s on s.`stdno` = r.`stdno`
where s.`stdname` = '정우성'
group by r.`stdno`;
