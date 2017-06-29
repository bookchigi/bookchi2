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

insert into Bookchigi_book_info values (book_isbn_seq.nextval,'C ���α׷��� �Թ�', 15000, '��ǻ��/IT', '������, ����ȯ', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 300, 'content', 'resources/Book/book_001.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ڹ� ���α׷��� ����', 15000, '��ǻ��/IT', '�����', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 325, 'content', 'resources/Book/book_002.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���α׷��� ����', 15000, '��ǻ��/IT', '������, ������', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 350, 'content', 'resources/Book/book_003.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'Android Studio�� Ȱ���� �ȵ���̵� ���α׷���', 15000, '��ǻ��/IT', '���糲, �ڱ��', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 375, 'content', 'resources/Book/book_004.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'������ API ���α׷���', 15000, '��ǻ��/IT', '�����', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 400, 'content', 'resources/Book/book_005.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�����ͺ��̽� ������ �ǽ�', 15000, '��ǻ��/IT', '�ձ���', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 425, 'content', 'resources/Book/book_006.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'������ ���α׷��� ����', 15000, '��ǻ��/IT', '���¿�, Ȳ����, ����ȫ, ������, ���ȣ', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 450, 'content', 'resources/Book/book_007.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'������ ��ȸ��', 15000, '��ǻ��/IT', '�Ӽ���, ȫ��ȣ', '�Ѻ��̵��', to_date('25-12-2000', 'dd-mm-yyyy'), 475, 'content', 'resources/Book/book_008.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ﱹ��', 20000, '�Ҽ�', '�̹���', '������', to_date('03-10-2002','dd-mm-yyyy'), 500,'content','resources/Book/book_009.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�޺�������', 8000, '������Ÿ��', '����','��ũ�̵��',to_date('05-06-2017','dd-mm-yyyy'),230,'content','resources/Book/book_010.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ñͰ˽�', 8000, '����', '������','û���',to_date('30-12-2005','dd-mm-yyyy'),319,'content','resources/Book/book_011.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�Ϲ��ǽź�', 6000, '��ȭ', '���̰�','���﹮ȭ��',to_date('02-06-2006','dd-mm-yyyy'),184,'content','resources/Book/book_012.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���', 15000, 'ö��', '����','ȫ�����ǻ�',to_date('15-02-2006','dd-mm-yyyy'),424,'content','resources/Book/book_012.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��������', 39000, '�ڽ���', '��������-������','��������',to_date('30-11-2016','dd-mm-yyyy'),1432,'content','resources/Book/book_013.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��ũ', 8000, '������Ÿ��', '����','��ũ�̵��',to_date('14-07-2008','dd-mm-yyyy'),351,'content','resources/Book/book_014.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'ġ��õ�ձ�', 14000, '��Ÿ��', '�̿���','�����ø�',to_date('07-05-2011','dd-mm-yyyy'),630,'content','resources/Book/book_015.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ڶ�', 20000, '����', '��뼱','����',to_date('05-06-2002','dd-mm-yyyy'),650,'content','resources/Book/book_016.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���������Ǽ����б�', 25000, '����', '��������','�ζ��뼭��',to_date('23-05-2017','dd-mm-yyyy'),592,'content','resources/Book/book_017.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�𸶷�-������', 14800, '��Ÿ��', '�̿���','�����ø�',to_date('08-09-2011','dd-mm-yyyy'),663,'content','resources/Book/book_018.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�𸶷�-������', 14800, '��Ÿ��', '�̿���','�����ø�',to_date('24-12-2011','dd-mm-yyyy'),550,'content','resources/Book/book_019.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�𸶷�-ȥ����', 14800, '��Ÿ��', '�̿���','�����ø�',to_date('25-04-2012','dd-mm-yyyy'),504,'content','resources/Book/book_020.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�𸶷�-������', 14800, '��Ÿ��', '�̿���','�����ø�',to_date('10-10-2012','dd-mm-yyyy'),512,'content','resources/Book/book_021.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ֶ�������', 14500, '��Ÿ��', '�̿���','�����ø�',to_date('31-03-2015','dd-mm-yyyy'),518,'content','resources/Book/book_022.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'ȣ������', 7500, '����', '�ʿ�','�巡��Ͻ�',to_date('10-02-2003','dd-mm-yyyy'),306,'content','resources/Book/book_023.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��ȣ��', 8000, '����', '�賲��','�ø���',to_date('10-07-2003','dd-mm-yyyy'),304,'content','resources/Book/book_024.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�������ϰ�', 6800, '����', '��ȿ��','����â��',to_date('22-01-1999','dd-mm-yyyy'),250,'content','resources/Book/book_025.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�����ְ���ó��', 8000, '����', '�뿬','��ũ�̵��',to_date('08-10-2004','dd-mm-yyyy'),304,'content','resources/Book/book_026.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'����', 7500, '����', '����','�ð���',to_date('05-06-2002','dd-mm-yyyy'),366,'content','resources/Book/book_027.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�𸶷�-�ؼ���', 9500, '��Ÿ��', '�̿���','���',to_date('01-06-1995','dd-mm-yyyy'),294,'content','resources/Book/book_028.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'õ������������', 8000, '����', '������','���Ƿ罺',to_date('11-11-2008','dd-mm-yyyy'),332,'content','resources/Book/book_029.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��ڵ�', 8000, '��Ÿ��', '�˷�ȥ','û���',to_date('19-12-2005','dd-mm-yyyy'),303,'content','resources/Book/book_030.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��ũ������', 7500, '��Ÿ��', '������','�Ϲڽ�',to_date('18-04-2003','dd-mm-yyyy'),326,'content','resources/Book/book_031.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���̸�', 8000, '��Ÿ��', '������','����Ͻ�',to_date('26-10-2006','dd-mm-yyyy'),335,'content','resources/Book/book_032.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�̵�', 3000, '��ȭ', '����','�Ϲڽ�',to_date('08-08-2002','dd-mm-yyyy'),200,'content','resources/Book/book_033.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'Ȳ���ǰ�', 13500, '����', '�ӹ���','�����Ͽ콺',to_date('30-12-2010','dd-mm-yyyy'),480,'content','resources/Book/book_034.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ǿչ���', 8000, '����', '�ʿ�','���Ƿ罺',to_date('20-10-2004','dd-mm-yyyy'),330,'content','resources/Book/book_035.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'������', 8000, '����', '�찢','�Թ̵��',to_date('23-11-2007','dd-mm-yyyy'),334,'content','resources/Book/book_036.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'ȯ������', 8000, '����', '�찢','�帲�Ͻ�',to_date('05-04-2009','dd-mm-yyyy'),330,'content','resources/Book/book_037.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�̰赶����', 9000, '����', '�ǵ帮���','�����Ʈ',to_date('18-09-2008','dd-mm-yyyy'),320,'content','resources/Book/book_038.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'����', 9000, '����', '������','��ī��BOOK',to_date('22-06-2007','dd-mm-yyyy'),416,'content','resources/Book/book_039.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'����', 4800, '����', '�谭��','��Ű���丮',to_date('12-06-2007','dd-mm-yyyy'),294,'content','resources/Book/book_040.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�˱��Ǽ�', 8000, '����', '���Ϲ�','���Ƿ罺',to_date('18-07-2016','dd-mm-yyyy'),310,'content','resources/Book/book_041.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���⹫��', 8000, '����', '������','���Ƿ罺',to_date('09-07-2009','dd-mm-yyyy'),344,'content','resources/Book/book_042.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�Ͱ˹���', 8000, '����', '�̸�ȥ','���Ƿ罺',to_date('29-08-2014','dd-mm-yyyy'),328,'content','resources/Book/book_043.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���뱺��', 8000, '����', '�念��','û���',to_date('24-01-2009','dd-mm-yyyy'),352,'content','resources/Book/book_044.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���밭ȣ', 8000, '����', '�念��','û���',to_date('31-03-2011','dd-mm-yyyy'),320,'content','resources/Book/book_045.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��ǥ����', 8000, '����', '�念��','û���',to_date('15-10-2003','dd-mm-yyyy'),304,'content','resources/Book/book_046.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ϵ����', 8000, '����', '�念��','û���',to_date('09-04-2005','dd-mm-yyyy'),303,'content','resources/Book/book_047.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'��������', 8000, '����', '�念��','û���',to_date('30-04-2007','dd-mm-yyyy'),375,'content','resources/Book/book_048.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�ø�����', 8000, '������Ÿ��', '�ڰ�','û���',to_date('21-11-2005','dd-mm-yyyy'),306,'content','resources/Book/book_049.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'����', 8000, '����', '�谭��','����, ����',to_date('30-09-2008','dd-mm-yyyy'),328,'content','resources/Book/book_050.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'õ�����', 8000, '����', '�±�','�ϵ�',to_date('23-03-2015','dd-mm-yyyy'),335,'content','resources/Book/book_051.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���縶��', 8000, '����', '�ѹ鸲','���Ƿ罺',to_date('25-12-2003','dd-mm-yyyy'),316,'content','resources/Book/book_052.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'ȭ����ǳ��', 8000, '����', '�ѹ鸲','û���',to_date('30-12-2004','dd-mm-yyyy'),312,'content','resources/Book/book_053.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'������������', 8000, '������Ÿ��', '����','���Ƿ罺',to_date('15-07-2008','dd-mm-yyyy'),356,'content','resources/Book/book_054.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'�巡�����', 7000, '��Ÿ��', '�̿���','Ȳ�ݰ���',to_date('30-05-1998','dd-mm-yyyy'),296,'content','resources/Book/book_055.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'���(D.I.O)', 8000, '������Ÿ��', '�ڰ�','û���',to_date('13-03-2010','dd-mm-yyyy'),332,'content','resources/Book/book_056.png');
insert into Bookchigi_book_info values (book_isbn_seq.nextval,'õ��', 8000, '����', '�谭��','�帲�Ͻ�',to_date('20-12-2009','dd-mm-yyyy'),328,'content','resources/Book/book_057.png');

select * from Bookchigi_book_info;
commit;