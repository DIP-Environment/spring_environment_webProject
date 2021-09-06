create table member(
	memberid varchar2(20) not null,
	name varchar2(30) not null,
	password varchar(255) not null,
	email varchar(30) null,
	regdate date not null,
	moddate_pwd date null,
	error_pwd number
);

select * from member;