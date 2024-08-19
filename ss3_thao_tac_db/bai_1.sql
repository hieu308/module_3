create database quangLySinhVien;
create table Class(
 ClassID int not null primary key auto_increment,
 ClassName varchar(60) not null,
 StartDate datetime not null,
 Status bit
);
create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(30), 
Phone varchar(50),
Status Bit,
ClassID INT NOT NULL,
foreign key (ClassID) references Class(ClassID)
);
create table sub (
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit Tinyint not null default 1 check (Credit >= 1),
Status bit
);
CREATE TABLE Mark (
    MarkID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubID INT NOT NULL,
    StudentID INT NOT NULL,
    Mark FLOAT DEFAULT 0 CHECK (Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE(SubID, StudentID),
    FOREIGN KEY (SubID) REFERENCES sub(SubID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

insert into Class(ClassID,ClassName,StartDate,Status) values
(1,'A1','2008-12-20',1),
(2,'A2','2008-12-22',1),
(3,'B3',current_date(),1);
insert into Student(StudentID,StudentName,Address,Phone,Status,ClassID) values
(1,'HUNG','Ha Noi','09012113113',1,1),
(2,'Hoa','Hai Phong',null,1,1),
(3,'Manh','HCM','0123123123',0,2);
insert into sub(SubID,SubName,Credit,Status)values
(1,'CF',5,1),
(2,'C',6,1),
(3,'HDJ',5,1),
(4,'RDBMS',10,1);
insert into Mark(MarkID,SubID,StudentID,Mark,ExamTimes) values
(1,1,1,8,1),
(2,1,2,10,2),
(3,2,1,12,1);
insert into Mark(MarkID,SubID,StudentID,Mark,ExamTimes) values
(4,1,3,7,2),
(5,2,2,5,2);

select * from sub
where Credit =(select Max(Credit) from sub);

select * from Mark
where Mark =(select Max(Mark) from Mark);

select 
s.StudentID,
S.StudentName,
s.Address,
s.Phone,
AVG(m.Mark) AS AverageMark
 from Student s 
left join Mark m on s.StudentID =m.StudentID
group by s.StudentID,
S.StudentName,
s.Address,
s.Phone
order by AverageMark desc;



