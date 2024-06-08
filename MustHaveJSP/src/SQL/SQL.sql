CREATE TABLE myfile(
	idx NUMBER PRIMARY KEY,
	title varchar2(200) NOT NULL,
	cate varchar2(30),
	ofile varchar2(100) NOT NULL,
	sfile varchar2(30) NOT NULL,
	postdate DATE default sysdate NOT null
)



SELECT * FROM mvcboard;


CREATE TABLE mvcboard(
	idx NUMBER PRIMARY KEY,
	name varchar2(50) NOT NULL,
	title varchar2(200) NOT NULL,
	content varchar2(2000) NOT NULL,
	postdate DATE DEFAULT sysdate NOT NULL,
	ofile varchar2(200),
	sfile varchar2(30),
	downcount number(5) DEFAULT 0 NOT NULL,
	pass varchar2(50) NOT NULL,
	visitcount NUMBER DEFAULT 0 NOT NULL
)

CREATE SEQUENCE seq_board_num
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	nomaxvalue
	nocycle
	nocache;

INSERT INTO mvcboard (idx, name, title, content, pass)
	values(seq_board_num.nextval, '김유신', '자료실 제목1 이다', '내용', '1234');
INSERT INTO mvcboard (idx, name, title, content, pass)
	values(seq_board_num.nextval, '장보고', '자료실 제목2 이다', '내용', '1234');
INSERT INTO mvcboard (idx, name, title, content, pass)
	values(seq_board_num.nextval, '이순신', '자료실 제목3 이다', '내용', '1234');
INSERT INTO mvcboard (idx, name, title, content, pass)
	values(seq_board_num.nextval, '강감찬', '자료실 제목4 이다', '내용', '1234');
INSERT INTO mvcboard (idx, name, title, content, pass)
	values(seq_board_num.nextval, '대조영', '자료실 제목5 이다', '내용', '1234');