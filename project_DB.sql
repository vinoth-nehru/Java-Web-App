

CREATE DATABASE project;

USE project;

CREATE TABLE admin ( password varchar(40) NOT NULL );

INSERT INTO admin VALUES ('admin');

CREATE TABLE enroll_for (degree varchar(5) NOT NULL, course varchar(30) NOT NULL);

INSERT INTO enroll_for (degree, course) values ('BE', 'Computer Science Engineering');
INSERT INTO enroll_for (degree, course) values ('BTech', 'Information Technology');
INSERT INTO enroll_for (degree, course) values ('BE', 'Computer Science and Design');
INSERT INTO enroll_for (degree, course) values ('BE', 'Computer Science and Business System');
INSERT INTO enroll_for (degree, course) values ('BE', 'Electrical and Electronics Engineering');


CREATE TABLE student ( roll_no integer PRIMARY KEY, name varchar(50) NOT NULL, password varchar(255) NOT NULL, email_id varchar(255) NOT NULL, degree varchar(5) NOT NULL, course varchar(30) NOT NULL, year integer NOT NULL, is_approved BOOLEAN DEFAULT false,  CONSTRAINT CHK_year CHECK (year BETWEEN 1 AND 3));
/*INSERT INTO student(roll_no,name,password,email_id,degree,course,year)values(311,'Vinoth Nehru','Vinoth@311','vinoth@gmail.com','BE','Computer Science and Engineering','III');
*/
CREATE TABLE faculty ( name varchar(20) NOT NULL, username varchar(50) NOT NULL, password varchar(255) NOT NULL, email_id varchar(255) NOT NULL, degree varchar(5) NOT NULL, course varchar(30) NOT NULL, year integer NOT NULL, subject varchar(50) primary key, is_approved BOOLEAN DEFAULT false, CONSTRAINT CHK_faculty_year CHECK (year BETWEEN 1 AND 3));
