drop sequence member_seq;
create sequence member_seq start with 0 increment by 1 minvalue 0 maxvalue 999999 nocycle;

drop table bookchigi_member;
create table bookchigi_member (
    userNo number unique,
    userMail varchar2(40) primary key,
    userPw varchar2(20) not null,
    userName varchar2(20) not null,
    userPhone varchar2(30),
    userGender varchar2(9),
    userBirth date,
    userSignDay date,
    userState number default 2,
    constraint member_gender_ch check(userGender in('남','여','외국인')),
    constraint member_emailaddress_ch check(length(userMail)>5)
);

insert into bookchigi_member values (member_seq.nextval, 'aa@aa.aa', 'pw', 'name', '010-1234-5678', '남', '1992-04-17', sysdate, 2);
insert into bookchigi_member values (member_seq.nextval, 'bb@bb.bb', 'pw', 'name', '010-2345-6789', '남', '1992-04-17', sysdate, 2);
insert into bookchigi_member values (member_seq.nextval, 'cc@cc.cc', 'pw', 'name', '010-9876-5432', '남', '1992-04-17', sysdate, 2);
insert into bookchigi_member values (member_seq.nextval, 'dd@dd.dd', 'pw', 'name', '010-8765-4321', '남', '1992-04-17', sysdate, 2);
select * from bookchigi_member;