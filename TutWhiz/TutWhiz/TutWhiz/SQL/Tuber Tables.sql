
Create Table TuberUser
(
	ID int primary key AUTO_INCREMENT,
	FirstName varchar(50),
    LastName varchar(50),
    UserName varchar(200),
    EmailAddress varchar(200),
    Password varchar(200)
); 

create table School 
(
	ID int auto_increment primary key,
	Name varchar(100), 
    State varchar(2), 
    City Varchar(200)
);
create table Department
(
	ID int auto_increment primary key,
    SchoolID int,
	Name varchar(100),
    FOREIGN KEY (SchoolID)
		references School(ID)
        on DELete cascade
);
create table Class
(
	ID int auto_increment primary key,
    DepartmentID int,
    Name varchar(100),
    FOREIGN KEY (DepartmentID)
		references Department(ID)
        ON DELETE CASCADE
);
Create table Teacher
(
	ID int auto_increment primary key,
    DepartmentID int,
    FirstName varchar(100),
    LastName varchar(100),
    foreign key (DepartmentID)
		references Department(ID)
        ON DELETE cascade
); 
create table TeacherRating
(
	ID int auto_increment primary key,
    TeacherID int,
    UserID int,
    foreign key (TeacherID) 
		references Teacher(ID)
        ON DELETE CASCADE,
	foreign key (UserID)
		references TuberUser(ID)
        ON DELETE CASCADE
); 

INSERT INTO TuberUser (Name, UserName, EmailAddress, Password) values ('Daniel', 'dwilson2547', 'dwilson2547@gmail.com', 'password'); 