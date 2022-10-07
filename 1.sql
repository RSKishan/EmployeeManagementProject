create database p1;
use p1;

create table emp(
emp_id int(8) primary key auto_increment,
ename varchar(30) not null,
address varchar(51) not null,
mobileno int(10) not null,
email varchar(30) not null,
dob date not null
);
desc emp;

create table empsalary(
emp_id int(8) not null,
bsalary float(10,4) not null,
hra float(10,4),
da float(10,4),
oa float(10,4),
gsalary float(11,4),
foreign key (emp_id) references emp(emp_id)
);
desc empsalary;

create table department(
	department_id int(6) primary key ,
    d_name varchar(30) not null,
    emp_id int(8) not null,
    foreign key (emp_id) references emp(emp_id)
);
desc department;

create table workload(
	project_id int(6) primary key,
    project_name varchar(50),
	emp_id int(8) not null,
    foreign key (emp_id) references emp(emp_id),
	department_id int(6) not null,
    foreign key (department_id) references department(department_id)
);
desc workload;

alter table workload
modify project_name  varchar(51) not null;

alter table workload
add create_date date not null;

create table login(
user_name varchar(25) not null,
password varchar(15) not null
);

create table signup(
user_name varchar(25) not null,
email varchar(35)not null,
password varchar(15)not null,
confirm_password varchar(15) not null,
su_create_date date not null
);

alter table workload
change create_date  w_create_date date;



