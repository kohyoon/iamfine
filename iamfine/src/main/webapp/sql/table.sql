create table member(
    mem_num number,
    mem_id varchar2(30) not null,
    mem_nickname varchar2(90) not null,
    mem_auth number(1) default 1 not null, -- 1:일반 2:정지 8:개발자 9:관리자
    constraint member_pk primary key (mem_num)
);
create sequence mem_seq;

create table member_detail(
    mem_num number,
    auto_log varchar2(36) unique, --자동로그인에 사용되는 식별값
    mem_name varchar2(90) not null,
    mem_id varchar2(30) not null,
    mem_pw varchar2(90) not null,
    mem_email varchar2(90) not null,
    mem_phone varchar2(10) not null,
    mem_regdate date default sysdate not null,
    constraint member_detail_pk primary key (mem_num),
    constraint mem_detail_fk foreign key(mem_num) references member (mem_num)
);
create sequence mem_detail_seq;

create table board(
    board_num number,
    board_title varchar2(100) not null,
    board_content clob not null,
    board_category number(1) not null,
    board_hit number(5) default 0 not null,
    board_regdate date default sysdate not null,
    board_ip varchar2(16) not null,
    mem_num number not null,
    constraint board_pk primary key (board_num)
);
create sequence board_seq;