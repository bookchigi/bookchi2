DROP SEQUENCE book_isbn_seq;
CREATE SEQUENCE book_isbn_seq
START WITH 1
INCREMENT BY 1
MAXVALUE 999999 nocycle;

set linesize 50;
drop table Bookchigi_book_info;
create table BookChiGi_book_info(
    book_isbn       number          not null,
    book_name       varchar2(100)   not null,
    book_price      number          not null,
    book_type       varchar2(100),
    book_arthor      varchar2(100),
    book_publisher  varchar2(100),
    book_release    date,
    book_page       number,
    book_contents   varchar2(1024),
    book_cover      varchar2(1024),
    constraint book_isbn_prykey primary key (book_isbn)
);

insert into Bookchigi_book_info values (book_isbn_seq.nextval,'C 프로그래밍 입문', 15000, '컴퓨터/IT', '김일중, 최종환', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 300, 'content', 'resources/Book/book_001.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'자바 프로그래밍 기초', 15000, '컴퓨터/IT', '고웅남', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 325, 'content', 'resources/Book/book_002.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'프로그래밍 언어론', 15000, '컴퓨터/IT', '김종훈, 김종진', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 350, 'content', 'resources/Book/book_003.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'Android Studio를 활용한 안드로이드 프로그래밍', 15000, '컴퓨터/IT', '우재남, 박길식', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 375, 'content', 'resources/Book/book_004.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'윈도우 API 프로그래밍', 15000, '컴퓨터/IT', '강경우', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 400, 'content', 'resources/Book/book_005.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'데이터베이스 관리와 실습', 15000, '컴퓨터/IT', '손광수', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 425, 'content', 'resources/Book/book_006.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'리눅스 프로그래밍 기초', 15000, '컴퓨터/IT', '최태영, 황준하, 고재홍, 윤현주, 김용호', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 450, 'content', 'resources/Book/book_007.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'디지털 논리회로', 15000, '컴퓨터/IT', '임석구, 홍경호', '한빛미디어', to_date('25-12-2000', 'dd-mm-yyyy'), 475, 'content', 'resources/Book/book_008.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'삼국지', 20000, '소설', '이문열', '민음사', to_date('03-10-2002','dd-mm-yyyy'), 500,'content','resources/Book/book_009.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'달빛조각사', 8000, '게임판타지', '남희성','로크미디어',to_date('05-06-2017','dd-mm-yyyy'),230,'content','resources/Book/book_010.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'궁귀검신', 8000, '무협', '조돈형','청어람',to_date('30-12-2005','dd-mm-yyyy'),319,'content','resources/Book/book_011.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'하백의신부', 6000, '만화', '윤미경','서울문화사',to_date('02-06-2006','dd-mm-yyyy'),184,'content','resources/Book/book_012.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'논어', 15000, '철학', '공자','홍익출판사',to_date('15-02-2006','dd-mm-yyyy'),424,'content','resources/Book/book_012.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'동아전과', 39000, '자습서', '동아출판-편집부','동아출판',to_date('30-11-2016','dd-mm-yyyy'),1432,'content','resources/Book/book_013.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'아크', 8000, '게임판타지', '유성','로크미디어',to_date('14-07-2008','dd-mm-yyyy'),351,'content','resources/Book/book_014.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'치우천왕기', 14000, '판타지', '이우혁','엘릭시르',to_date('07-05-2011','dd-mm-yyyy'),630,'content','resources/Book/book_015.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'코란', 20000, '종교', '김용선','명문당',to_date('05-06-2002','dd-mm-yyyy'),650,'content','resources/Book/book_016.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'존파이퍼의성경읽기', 25000, '종교', '존파이퍼','두란노서원',to_date('23-05-2017','dd-mm-yyyy'),592,'content','resources/Book/book_017.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'퇴마록-국내편', 14800, '판타지', '이우혁','엘릭시르',to_date('08-09-2011','dd-mm-yyyy'),663,'content','resources/Book/book_018.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'퇴마록-세계편', 14800, '판타지', '이우혁','엘릭시르',to_date('24-12-2011','dd-mm-yyyy'),550,'content','resources/Book/book_019.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'퇴마록-혼세편', 14800, '판타지', '이우혁','엘릭시르',to_date('25-04-2012','dd-mm-yyyy'),504,'content','resources/Book/book_020.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'퇴마록-말세편', 14800, '판타지', '이우혁','엘릭시르',to_date('10-10-2012','dd-mm-yyyy'),512,'content','resources/Book/book_021.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'왜란종결자', 14500, '판타지', '이우혁','엘릭시르',to_date('31-03-2015','dd-mm-yyyy'),518,'content','resources/Book/book_022.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'호위무사', 7500, '무협', '초우','드래곤북스',to_date('10-02-2003','dd-mm-yyyy'),306,'content','resources/Book/book_023.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'수호령', 8000, '무협', '김남재','올리브',to_date('10-07-2003','dd-mm-yyyy'),304,'content','resources/Book/book_024.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'지옥제일검', 6800, '무협', '서효원','서울창작',to_date('22-01-1999','dd-mm-yyyy'),250,'content','resources/Book/book_025.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'무림최강공처가', 8000, '무협', '통연','로크미디어',to_date('08-10-2004','dd-mm-yyyy'),304,'content','resources/Book/book_026.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'투왕', 7500, '무협', '별도','시공사',to_date('05-06-2002','dd-mm-yyyy'),366,'content','resources/Book/book_027.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'퇴마록-해설집', 9500, '판타지', '이우혁','들녘',to_date('01-06-1995','dd-mm-yyyy'),294,'content','resources/Book/book_028.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'천하제일이인자', 8000, '무협', '월영신','파피루스',to_date('11-11-2008','dd-mm-yyyy'),332,'content','resources/Book/book_029.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'비뢰도', 8000, '판타지', '검류혼','청어람',to_date('19-12-2005','dd-mm-yyyy'),303,'content','resources/Book/book_030.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'다크메이지', 7500, '판타지', '김정률','북박스',to_date('18-04-2003','dd-mm-yyyy'),326,'content','resources/Book/book_031.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'데이몬', 8000, '판타지', '김정률','서울북스',to_date('26-10-2006','dd-mm-yyyy'),335,'content','resources/Book/book_032.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'이드', 3000, '만화', '김대우','북박스',to_date('08-08-2002','dd-mm-yyyy'),200,'content','resources/Book/book_033.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'황제의검', 13500, '무협', '임무성','랜덤하우스',to_date('30-12-2010','dd-mm-yyyy'),480,'content','resources/Book/book_034.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'권왕무적', 8000, '무협', '초우','파피루스',to_date('20-10-2004','dd-mm-yyyy'),330,'content','resources/Book/book_035.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'십전제', 8000, '무협', '우각','뿔미디어',to_date('23-11-2007','dd-mm-yyyy'),334,'content','resources/Book/book_036.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'환영무인', 8000, '무협', '우각','드림북스',to_date('05-04-2009','dd-mm-yyyy'),330,'content','resources/Book/book_037.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'이계독존기', 9000, '무협', '건드리고고','영상노트',to_date('18-09-2008','dd-mm-yyyy'),320,'content','resources/Book/book_038.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'묵향', 9000, '무협', '전동조','스카이BOOK',to_date('22-06-2007','dd-mm-yyyy'),416,'content','resources/Book/book_039.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'마신', 4800, '무협', '김강현','디키스토리',to_date('12-06-2007','dd-mm-yyyy'),294,'content','resources/Book/book_040.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'검귀의선', 8000, '무협', '임하민','파피루스',to_date('18-07-2016','dd-mm-yyyy'),310,'content','resources/Book/book_041.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'낙향무사', 8000, '무협', '성상현','파피루스',to_date('09-07-2009','dd-mm-yyyy'),344,'content','resources/Book/book_042.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'귀검무영', 8000, '무협', '미리혼','파피루스',to_date('29-08-2014','dd-mm-yyyy'),328,'content','resources/Book/book_043.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'절대군림', 8000, '무협', '장영훈','청어람',to_date('24-01-2009','dd-mm-yyyy'),352,'content','resources/Book/book_044.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'절대강호', 8000, '무협', '장영훈','청어람',to_date('31-03-2011','dd-mm-yyyy'),320,'content','resources/Book/book_045.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'보표무적', 8000, '무협', '장영훈','청어람',to_date('15-10-2003','dd-mm-yyyy'),304,'content','resources/Book/book_046.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'일도양단', 8000, '무협', '장영훈','청어람',to_date('09-04-2005','dd-mm-yyyy'),303,'content','resources/Book/book_047.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'마도쟁패', 8000, '무협', '장영훈','청어람',to_date('30-04-2007','dd-mm-yyyy'),375,'content','resources/Book/book_048.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'올마스터', 8000, '게임판타지', '박건','청어람',to_date('21-11-2005','dd-mm-yyyy'),306,'content','resources/Book/book_049.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'뇌신', 8000, '무협', '김강현','마루, 마야',to_date('30-09-2008','dd-mm-yyyy'),328,'content','resources/Book/book_050.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'천마재생', 8000, '무협', '태규','북두',to_date('23-03-2015','dd-mm-yyyy'),335,'content','resources/Book/book_051.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'무당마검', 8000, '무협', '한백림','파피루스',to_date('25-12-2003','dd-mm-yyyy'),316,'content','resources/Book/book_052.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'화산질풍검', 8000, '무협', '한백림','청어람',to_date('30-12-2004','dd-mm-yyyy'),312,'content','resources/Book/book_053.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'대장장이지그', 8000, '게임판타지', '강찬','파피루스',to_date('15-07-2008','dd-mm-yyyy'),356,'content','resources/Book/book_054.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'드래곤라자', 7000, '판타지', '이영도','황금가지',to_date('30-05-1998','dd-mm-yyyy'),296,'content','resources/Book/book_055.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'디오(D.I.O)', 8000, '게임판타지', '박건','청어람',to_date('13-03-2010','dd-mm-yyyy'),332,'content','resources/Book/book_056.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'천신', 8000, '무협', '김강현','드림북스',to_date('20-12-2009','dd-mm-yyyy'),328,'content','resources/Book/book_057.png');

select * from Bookchigi_book_info;
commit;