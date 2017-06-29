drop sequence Purchase_Seq;
create sequence Purchase_Seq
    Start With 1
    increment By 1
    maxvalue 999999 nocycle;

drop table Bookchigi_purchase;
create table BookChiGi_purchase (
    purchase_no number not null,
    purchase_buyer varchar2(30) not null,
    purchase_bookNo number not null,
    purchase_price number default 0,
    purchase_date date default sysdate,
    purchase_discountNo number default -1,
    constraint purchase_no_prykey primary key (purchase_no),
    constraint purchase_buyer_foreign foreign key (purchase_buyer) references bookchigi_member(userMail),
    constraint purchase_no_foreign foreign key (purchase_bookNo) references bookchigi_book_info(book_isbn)
);

insert into Bookchigi_purchase values (purchase_seq.nextval, 'test@test.test', 2, 20000, sysdate, 0);

select * from Bookchigi_purchase;
commit;