drop sequence discount_seq;
create sequence discount_seq
start with 1
increment by 1
maxvalue 999999 nocycle;

drop table bookchigi_discount;
create table bookchigi_discount(
   discount_no number primary key,
   discount_name varchar2(60) not null,
   discount_content varchar2(60) default null,
   discount_target number not null,
   discount_price number check (discount_price>=0),
   discount_percent number default 0 check (discount_percent between 0 and 100),
   discount_start date not null,
   discount_end date not null,
   foreign key(discount_target) references bookchigi_book_info(book_isbn)
);

select * from bookchigi_discount;