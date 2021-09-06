<-- insertNotice=INSERT INTO NOTICE VALUES(SEQ_NOTICE_NO.NEXTVAL,?,?,?,DEFAULT,?,DEFAULT)-->

UPDATE EN_MEMBER SET pwd_error_num=0 WHERE member_id='qwer'
select * from en_member

--회원가입 및 로그인 테이블
CREATE TABLE en_Member (
userId varchar2(30) not null primary key,
password varchar2(255) not null,
userName varchar2(50) not null,
gender varchar2(30) not null,
age number not null,
email varchar2(50) not null,
phone varchar2(50) not null,
address varchar2(50) not null,
hobby varchar2(255) not null,
enrolDate date not null
);

--공지사항
CREATE SEQUENCE SEQ_BOARD_NO;
create table BOARD(
    boardNo number not null primary key,
    boardTitle varchar2(100) not null,
    boardWriter varchar2(50) not null,
    boardContent long not null,
    originalFileName varchar2(255) not null,
    renamedFileName varchar2(255) not null,
    boardDate date not null,
    readCount number not null
);

--게시판
CREATE SEQUENCE SEQ_NOTICE_NO;
create table notice(
    noticeNo number not null primary key,
    noticeTitle varchar2(50) not null,
    noticeWriter varchar2(100) not null,
    noticeContent long not null,
    noticeDate date not null,
    filePath varchar2(255) not null
);


--내가 사용한 테이블--
CREATE TABLE Member (
userId varchar2(30) not null primary key,
password varchar2(255) not null,
userName varchar2(50) not null,
gender varchar2(30) not null,
age number not null,
email varchar2(50) not null,
phone varchar2(50) not null,
address varchar2(50) not null,
hobby varchar2(255) not null,
enrolDate date not null
);

CREATE SEQUENCE SEQ_BOARD_NO;
create table BOARD(
    board_No number not null primary key,
    board_Title varchar2(100) not null,
    board_Writer varchar2(50) not null,
    board_Content long not null,
    board_original_FileName varchar2(255) not null,
    board_renamed_FileName varchar2(255) not null,
    board_Date date not null,
    board_readCount number not null
);

CREATE SEQUENCE SEQ_NOTICE_NO;
create table notice(
    notice_No number not null primary key,
    notice_Title varchar2(50) not null,
    notice_Writer varchar2(100) not null,
    notice_Content long not null,
    notice_Date date not null,
    filePath varchar2(255) not null
);

CREATE SEQUENCE SEQ_BOARD_COMMENT_NO;
create table BOARD_COMMENT(
board_comment_no number primary key,
board_comment_level number not null,
board_comment_writer varchar2(50) not null,
board_comment_content long not null,
board_ref number not null,
board_comment_ref number not null,
board_comment_date date not null
);


