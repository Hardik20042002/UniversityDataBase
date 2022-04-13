create database university;
use university;
-- HOSTEL
create table Hostel
(
hostel_name varchar(60),
room_no varchar(8) primary key not null,
room_type varchar(10),
hostel_rent int
);
insert into Hostel
values
('Ramanujan', 'RA101', 'Single', 1200),
('Bhaskara', 'B302', 'Single', 1400),
('Ramanujan', 'RA403', 'Double', 800),
('Ramanujan', 'RA211', 'Single', 1300),
('Raman', 'R101', 'Single', 1300),
('Aryabhatta', 'R304', 'Single', 1200),
('Ramanujan', 'RA401', 'Single', 1200),
('Aryabhatta', 'A302', 'Single', 1400),
('Bhaskara', 'B301', 'Double', 600),
('Ramanujan', 'RA301', 'Single', 1600),
('Aryabhatta', 'A304', 'Single', 1500),
('Aryabhatta', 'A150', 'Single', 1100),
('Ramanujan', 'RA113', 'Single', 1200),
('Bhaskara', 'B331', 'Single', 1400),
('Ramanujan', 'RA231', 'Double', 800),
('Aryabhatta', 'A421', 'Single', 1300),
('Raman', 'R105', 'Single', 1200),
('Aryabhatta', 'A298', 'Triple', 8000),
('Aryabhatta', 'A151', 'Double', 1000),
('Raman', 'R111', 'Triple', 700),
('Raman', 'R108', 'Single', 1400);
select * from hostel;
-- COURSE
create table Course
(
Course_Id varchar(8) primary key not null,
Name varchar(50),
Type varchar(10),
Dept_Id varchar(5)
);
insert into Course
values
('COC01', "DBMS","Core","D01"),
('COC02', "CAO","Core","D01"),
('COC03', "Microprocessors","Core","D02"),
('COC04', "Microcontrollers","Core","D02"),
('COC05', "Algorithms","Core","D01"),
('COC06', "Web Technology","Core","D01"),
('COC07', "Maths Level 1","Core","D08"),
('COC08', "Physics","Core","D06"),
('COC09', "Chemistry","Core","D07"),
('COC10', "Data Structures","Core","D01"),
('COC11', "Maths Level 2","Core","D08"),
('COC12',"English","Core","D09"),
('COC13',"Computer Programming","Core","D03"),
('COC14',"Basics of Mechanicle Engineering","Core","D10"),
('COC15',"VLSI","Core","D02"),
('COC16',"Signal Processing","Core","D02"),
('COC17',"Artificial Engineering","Core","D01"),
('COC18',"Data Science","Core","D01"),
('COC19',"Computer Networking","Core","D01"),
('COC20',"Bio-Informatics","Core","D04"),
('COC21',"Mechatronics","Core","D10"),
('COC22',"Analog Circuits","Core","D11"),
('FEC01',"German","FE","D09"),
('FEC02',"Innovation","FE","D05"),
('FEC03',"Soft Skills","FE","D09");
select * from Course;
-- DEPARTMENT
create table Department
(
Deptid varchar(10) primary key not null,
Name varchar(50) not null
);
insert into Department
values
("D01", "Computer Engineering"),
("D02", "Electronics and Communications Engineering"),
("D03", "Information Technology"),
("D04", "Bio-Technology"),
("D05", "Management Studies"),
("D06", "Physics"),
("D07", "Chemistry"),
("D08", "Mathematics"),
("D09", "Humanities and Social Sciences"),
("D10", "Manufacturing Process and Automation"),
("D11", "Electrical Engineering"),
("D12", "Instrumentation and Control Engineering");
select * from Department;
-- UNDERGRAD_STUDENTS
create table undergrad_students
(
RollNo varchar(50) not null,
Name varchar(50),
DOB date,
Degree varchar(50),
HostelRoomNo varchar(8),
courseId varchar(50),
primary key(RollNo,courseId)
);
insert into undergrad_students
values
('2020UCO1234',"Soham","2002-03-21","BTech-COE","RA101","COC01"),
('2020UCO1234',"Soham","2002-03-21","BTech-COE","RA101","COC02"),
('2020UCO1234',"Soham","2002-03-21","BTech-COE","RA101","COC03"),
('2020UCO1234',"Soham","2002-03-21","BTech-COE","RA101","COC05"),
('2020UCO1234',"Soham","2002-03-21","BTech-COE","RA101","FEC01"),
('2020UCO2316',"Tushar","2002-12-11","BTech-COE","B302","COC01"),
('2020UCO2316',"Tushar","2002-12-11","BTech-COE","B302","COC02"),
('2020UCO2316',"Tushar","2002-12-11","BTech-COE","B302","COC06"),
('2020UCO2316',"Tushar","2002-12-11","BTech-COE","B302","FEC01"),
('2020UCD1005',"Naman","2002-05-04","BTech-CSDS","RA403","COC01"),
('2020UCD1005',"Naman","2002-05-04","BTech-CSDS","RA403","COC05"),
('2020UCD1005',"Naman","2002-05-04","BTech-CSDS","RA403","FEC03"),
('2020UBT2445',"Yash","2002-03-13","BTech-BT","RA403","COC10"),
('2020UCO2445',"Yash","2002-03-13","BTech-BT","RA403","COC20"),
('2020UCO2445',"Yash","2002-03-13","BTech-BT","RA403","FEC02"),
('2020UIT2888',"Raman","2002-10-27","BTech-BT","R101","COC05"),
('2020UIT2888',"Raman","2002-10-27","BTech-BT","R101","COC07"),
('2020UIT2888',"Raman","2002-10-27","BTech-BT","R101","COC13"),
('2020UIT2888',"Raman","2002-10-27","BTech-BT","R101","FEC02"),
('2020UME1765',"Suraj","2002-01-11","BTech-ME","B331","COC08"),
('2020UME1765',"Suraj","2002-01-11","BTech-ME","B331","COC11"),
('2020UME1765',"Suraj","2002-01-11","BTech-ME","B331","COC12"),
('2020UME1765',"Suraj","2002-01-11","BTech-ME","B331","COC14"),
('2020UME1765',"Suraj","2002-01-11","BTech-ME","B331","FEC02"),
('2020UEE1980',"Aman","2002-08-17","BTech-EE","R108","COC22"),
('2020UEE1980',"Aman","2002-08-17","BTech-EE","R108","COC12"),
('2020UEE1980',"Aman","2002-08-17","BTech-EE","R108","COC09"),
('2020UEC2443',"Karan","2002-11-08","BTech-ECE","A421","COC03"),
('2020UEC2443',"Karan","2002-11-08","BTech-ECE","A421","COC04"),
('2020UEC2443',"Karan","2002-11-08","BTech-ECE","A421","COC08"),
('2020UEC2443',"Karan","2002-11-08","BTech-ECE","A421","COC10"),
('2020UEC2443',"Karan","2002-11-08","BTech-ECE","A421","FEC03");
alter table undergrad_students add age integer;
update undergrad_students set age=floor((current_date()-DOB)/(10000));
select * from undergrad_students;
-- POSTGRAD_STUDENTS
create table postgrad_students
(
RollNo varchar(50) not null,
Name varchar(50),
DOB date,
Degree varchar(50),
HostelRoomNo varchar(8),
courseId varchar(50),
primary key(RollNo,courseId)
);
insert into postgrad_students
values
("2020PCO1499","Hardik","1998-05-23","MTech-COE","B301","COC17"),
("2020PCO2100","Darsh","1998-12-20","MTech-COE","B301","COC17"),
("2020PCO1875","Chandan","1998-08-03","MTech-COE","RA231","COC17"),
("2020PCO1325","Sayam","1998-01-15","MTech-COE","RA231","COC18"),
("2020PCO1100","Sam","1999-05-11","MTech-COE","R111","COC18"),
("2020PCO2008","Ritik","1998-11-19","MTech-COE","R111","COC19"),
("2020PCO2115","Manan","1999-06-20","MTech-COE","R111","COC19"),
("2020PEC2000","Shreyas","1999-10-25","MTech-ECE","A151","COC15"),
("2020PEC1800","Aayush","1998-03-05","MTech-ECE","A151","COC15"),
("2020PEC2115","Akhilesh","1998-04-23","MTech-ECE","A298","COC16"),
("2020PME1009","Shivam","1998-09-20","MTech-ME","A298","COC21"),
("2020PEE2010","Ashish","1998-06-30","MTech-EE","A298","COC22"),
("2020PBT2190","Rohit","1998-07-11","MTech-BT","RA211","COC20");
alter table postgrad_students add age integer;
update postgrad_students set age=floor((current_date()-DOB)/(10000));
select * from postgrad_students;
-- EXAM
create table Exam
(
exam_Id varchar(10) primary key not null,
exam_RoomNo int,
exam_date date,
exam_time time,
course_Id varchar(10)
);
insert into Exam
values
("MSE001", 1, '12-01-21', 0900,"COC15"),
("MSE002", 2, '12-01-21', 0900,"COC16"),
("MSE003", 3, '12-01-21', 0900,"COC17"),
("MSE004", 4, '12-01-21', 1200,"COC18"),
("MSE005", 5, '12-01-21', 1200,"COC19"),
("MSE006", 6, '12-01-21', 1200,"COC21"),
("MSE007", 2, '13-01-21', 0900,"COC01"),
("MSE008", 3, '13-01-21', 1200,"COC07"),
("MSE009", 4, '13-01-21', 1500,"COC04"),
("MSE010", 6, '13-01-21', 1500,"COC20"),
("MSE011", 1, '14-01-21', 0900,"COC02"),
("MSE012", 2, '14-01-21', 1200,"COC05"),
("MSE013", 3, '14-01-21', 1500,"COC22"),
("MSE014", 4, '15-01-21', 0900,"COC03"),
("MSE015", 3, '15-01-21', 1200,"COC09"),
("MSE016", 1, '15-01-21', 1500,"COC08"),
("MSE017", 2, '16-01-21', 0900,"COC10"),
("MSE018", 4, '16-01-21', 1200,"COC14"),
("MSE019", 6, '16-01-21', 1500,"COC06"),
("MSE020", 1, '18-01-21', 0900,"COC12"),
("MSE021", 3, '18-01-21', 1200,"COC11"),
("MSE022", 4, '18-01-21', 1500,"COC13"),
("MSE023", 3, '17-01-21', 0900,"FEC01"),
("MSE024", 3, '17-01-21', 1030,"FEC03"),
("MSE025", 3, '17-01-21', 1200,"FEC01");
select * from Exam;
-- WARDEN
create table Warden
(
Warden_Id varchar(10),
Name varchar(50),
DOB date,
Address varchar(50),
Hostel_name varchar(50),
primary key(Warden_Id,Hostel_name)
);
insert into Warden
values
("W01","Mahesh","1982-04-30","Tilak Nagar","Ramanujan"),
("W02","Suresh","1985-08-21","Preet Vihar","Bhaskara"),
("W03","Narottam","1980-11-18","Shahdara","Aryabhatta"),
("W04","Saurabh","1983-08-20","Dwarka","Bhaskara"),
("W05","Ajay","1981-04-25","Rohini","Raman"),
("W06","Shikhar","1981-06-19","Moti Nagar","Aryabhatta"),
("W07","Abhishek","1980-10-10","Pitampura","Raman"),
("W08","Siraj","1985-12-06","Model Town","Ramanujan");
alter table Warden add age integer;
update Warden set age=floor((current_date()-DOB)/(10000));
select * from Warden;
-- FACULTY
create table Faculty
(
Faculty_Id varchar(10),
Name varchar(50),
DOB date,
Address varchar(50),
Course_Id varchar(50),
primary key(Faculty_Id,Course_Id)
);
insert into Faculty
values
("F01","Amit","1982-08-30","Tilak Nagar","COC01"),
("F01","Amit","1982-08-30","Tilak Nagar","COC06"),
("F01","Amit","1982-08-30","Tilak Nagar","COC10"),
("F01","Amit","1982-08-30","Tilak Nagar","COC17"),
("F02","Ritu","1980-02-11","Ramesh Nagar","COC19"),
("F02","Ritu","1980-02-11","Ramesh Nagar","COC03"),
("F02","Ritu","1980-02-11","Ramesh Nagar","COC04"),
("F02","Ritu","1980-02-11","Ramesh Nagar","COC15"),
("F02","Ritu","1980-02-11","Ramesh Nagar","COC16"),
("F03","Namesh","1985-01-20","Rohini","COC01"),
("F03","Namesh","1985-01-20","rohini","COC02"),
("F03","Namesh","1985-01-20","Rohini","COC05"),
("F03","Namesh","1985-01-20","rohini","COC18"),
("F03","Namesh","1985-01-20","rohini","COC19"),
("F04","AKhilesh","1980-11-21","Dwarks","COC08"),
("F05","Mukhesh","1982-08-07","Nawada","COC09"),
("F06","Alakh","1983-06-13","Preet Vihar","COC07"),
("F06","Alakh","1983-06-13","Preet Vihar","COC11"),
("F07","Vikas","1981-12-10","IP Extention","COC12"),
("F07","Vikas","1981-12-10","IP Extention","FEC03"),
("F08","Biswas","1980-12-19","Moti Nagar","COC05"),
("F08","Biswas","1980-12-19","Moti Nagar","COC10"),
("F08","Biswas","1980-12-19","Moti Nagar","COC13"),
("F09","Andriya","1986-10-29","Kirti Nagar","COC14"),
("F09","Andriya","1986-10-29","Kirti Nagar","COC21"),
("F10","Ajeet","1985-10-19","Inderlok","COC14"),
("F11","Harshvardhan","1980-01-15","Anand Vihar","COC16"),
("F11","Harshvardhan","1980-01-15","Anand Vihar","COC22"),
("F12","Shobit","1982-08-25","Vaishali","COC20"),
("F13","Alok","1980-09-19","Noida","COC20"),
("F14","Raghav","1982-07-05","Ghaziabad","COC12"),
("F14","Raghav","1982-07-05","Ghaziabad","FEC01"),
("F14","Raghav","1982-07-05","Ghaziabad","FEC03"),
("F15","Amitabh","1981-02-09","Dwarks","COC08"),
("F16","Hrithik","1982-06-17","Nawada","COC09"),
("F17","Sachin","1980-08-23","Nirman Vihar","COC07");
alter table Faculty add age integer;
update Faculty set age=floor((current_date()-DOB)/(10000));
select * from Faculty;

-- Query to select all the courses that have more than one faculty teaching it
Select Course.course_id,Course.Name from Course, Faculty where Course.course_id = Faculty.course_id 
group by Course.Course_id having count(Faculty.Faculty_id)>=2;
-- Query to select names of warden that manges hostel Ramanujan
Select Warden_id,Name from Warden where hostel_name = "Ramanujan";
-- Query to select all the undergraduate students who are persuing Btech in COE and have dob after 2002-05-01
Select distinct RollNo,Name from undergrad_students where DOB > 2002-05-01 and Degree = "BTech-COE";
-- Query to select the hostel rooms that have rent more than 1500
Select hostel_name,room_no,room_type from Hostel where hostel_rent > 1500;
-- Query to select all the courses whose exam is scheduled after 12:00
Select Course.course_id,Course.Name,Exam.exam_date,Exam.exam_time from Course, Exam where 
Course.course_id = Exam.course_id and exam_time > 1200;
-- Query to select the hostel rooms that are vacant
select hostel_name,room_no,room_type from Hostel where room_no not in(select distinct HostelRoomNo from 
undergrad_students UNION select distinct HostelRoomNo from postgrad_students); 
-- Query to count number of courses offered by each department
select Department.Deptid,Department.Name,count(Course.course_id) as Countofcourses from Course,Department where 
Course.dept_id=Department.deptid group by dept_id;
-- Query to find the count of rooms in each hostel
select hostel_name,count(room_no) as Room_count from Hostel group by hostel_name;
-- Query to select departments with given deptartment id
select * from department where Deptid in("D02","D03","D10");
-- Query to select department names starting with M or C
select * from department where name like "M%" Union select * from department where name like "C%";
-- Query to select all the courses of type FE
select Course_id,Name from Course where type="FE";
-- Query to select all students who have taken course from electronics and communication department
select distinct RollNo,Name from undergrad_students where courseId in(select courseId from Course 
where dept_id in(select deptid from Department where Name="Electronics and Communications Engineering"))
UNION
select distinct RollNo,Name from postgrad_students where courseId in(select courseId from Course 
where dept_id in(select deptid from Department where Name="Electronics and Communications Engineering"));
-- Query to show list of undergraduate students in descending order of age
select * from undergrad_students order by age desc;
-- Query to show all the faculty members who teach the course named Data Structures
select Faculty_Id,Name,Age from Faculty where Course_Id in(select Course_Id from Course where Name="Data Structures");