
Create Table TuberUser
(
	ID int primary key AUTO_INCREMENT,
	Name varchar(50),
    UserName varchar(50),
    EmailAddress varchar(100),
    Password varchar(100)
); 

INSERT INTO TuberUser (Name, UserName, EmailAddress, Password) values ('Daniel', 'dwilson2547', 'dwilson2547@gmail.com', 'password'); 

select * from TuberUser; 