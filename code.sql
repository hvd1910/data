
IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'Example5')
    DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO 
USE Example5
GO 


CREATE TABLE LopHoc(
    MaLopHoc INT PRIMARY KEY IDENTITY,
    TenLopHoc VARCHAR(10)
)
GO 
SELECT * FROM LopHoc
GO
INSERT INTO LopHoc(TenLopHoc) VALUES ('T2205E')
SELECT * FROM LopHoc
UPDATE LopHoc SET TenLopHoc = 'T2209A1' WHERE MaLopHoc = 1
DELETE FROM LopHoc WHERE MaLopHoc = 1
GO 



CREATE TABLE SinhVien(
    MaSv int PRIMARY KEY,
    TenSv Varchar(40),
    MaLopHoc int,
    CONSTRAINT fk FOREIGN KEY (MaLopHoc) REFERENCES LopHoc(MaLopHoc)

)

GO 
INSERT INTO (MaSv, TenSv, MaLopHoc) VALUES (5, 'Minh', 1),
(3, 'Hoa', 2), (5, 'Minh', 8), (16, 'Linh', 3);
SELECT * FROM SinhVien
SELECT * FROM LopHoc
GO 


CREATE TABLE category (
    id int PRIMARY KEY, name Varchar(20)
)
CREATE TABLE Produce ( 
    id int , name Varchar(40), cat_id int, 
    constraint fk2 foreign key (cat_id) references category(id)
)

INSERT INTO catagory (id, name) values (1, 'Ha noi'), (2, ' cty')
INSERT INTO produce (id, name, cat_id) values (2, ' May rua bat', 1),
(2, 'May lau nha', 2), (5, 'May ru ngu', 1)
SELECT * FROM catagory
SELECT * FROM Produce


DROP TABLE SanPham
GO
CREATE TABLE SanPham (
    MaSp int NOT NULL,
    TenSp Varchar(40) NULL
)

GO 
INSERT INTO SanPham(MaSp, TenSp) VALUES (1, 'Laptop')
GO
INSERT INTO SanPham(TenSp) VALUES ('Laptop2')
GO 
INSERT INTO SanPham(MaSp) VALUES (2)
GO
SELECT * FROM SanPham


CREATE TABLE StoreProduct(
    ProductID int NOT NULL,
    Name Varchar(40) NOT NULL,
    Price money NOT NULL DEFAULT (100)
)
GO

INSERT INTO StoreProduct (ProductID, Name) VALUES (111, 'Rivets')
GO
INSERT INTO StoreProduct VALUE (1, 'Mac', 101)
GO
SELECT * FROM StoreProduct
GO

CREATE TABLE ContactPhone (
    Person_ID int IDENTITY(500,10) NOT NULL,
    MobileNumber bigint NOT NULL

)

GO
INSERT INTO ContactPhone VALUES (984123123)
INSERT INTO ContactPhone VALUES (984123124)
GO 
SELECT * FROM ContactPhone
GO


DROP TABLE CellularPhone
GO 
CREATE TABLE CellularPhone (
    Person_ID uniqueidentifier DEFAULT NEWID() NOT NULL,
    PersonName Varchar(60) NOT NULL
)

INSERT INSERT CellularPhone(PersonName) VALUES ('William Smith')
GO SELECT * FROM CellularPhone
GO


SELECT * FROM CellularPhone

GO

CREATE TABLE ContactPhone2 (
    Person_ID int  PRIMARY KEY, 
    MobileNumber bigint UNIQUE,
    ServiceProvider Varchar(30),
    LandlineNumber bigint UNIQUE
)


INSERT INTO ContactPhone2 values (101, 983345674, 'Hutch' NULL),
(102, 983345674, 'Alex', 98332211), (102, 993345674, 'Alex', 98332211)

GO 
SELECT * FROM ContactPhone2
GO
DROP TABLE PhoneExpenses (
    Expense_ID int PRIMARY KEY,
    MobileNumber bigint FOREIGN KEY REFERENCES ContactPhone2 (MobileNumber),
    Amount Bigint CHECK (Amount >0)
)

GO 
INSERT INTO PhoneExpenses(Expense_ID, MobileNumber, Amount)
VALUES (1, 983345674, 10)
GO

INSERT INTO PhoneExpenses(Expense_ID, MobileNumber, Amount)
VALUES (1, 983345674, 10)
GO

INSERT INTO PhoneExpenses(Expense_ID, MobileNumber, Amount)
VALUES (2, 9999, 10)
GO

INSERT INTO PhoneExpenses(Expense_ID, MobileNumber, Amount)
VALUES (2, 983345674, -2)
GO
SELECT * FROM PhoneExpenses
GO

ALTER TABLE ContactPhone2 
    ALTER COLUM ServiceProvider Varchar(45)
GO 
SELECT * FROM ContactPhone2
GO

ALTER TABLE StoreProduct
    ADD CONSTRAINT CHECK_PICE CHECK (Price >= 10)
GO
SELECT * FROM StoreProduct
GO

ALTER TABLE StoreProduct
    DROP CONSTRAINT CHECK_PICE

CREATE TABLE  student(

(rollNumber INT), 
name VARCHAR(30),
class VARCHAR(30),
section VARCHAR(1),
mobile Varchar(10),
PRIMARY KEY (rollNumber, mobile));


INSERT INTO student (rollNumber, name, class, section, mobile)
VALUES (1, ' AMAN', 'FOURTH', 'B','9988774455');
INSERT INTO student (rollNumber, name, class, section, mobile)
VALUES (2, ' JOHN', 'FIRST', 'B','9988112233');
INSERT INTO student (rollNumber, name, class, section, mobile)
VALUES (3, ' Thi', 'Dang', 'B','9988777755');
INSERT INTO student (rollNumber, name, class, section, mobile)
VALUES (4, ' Thi', 'Kim', 'C','9955663322');

SELECT * FROM student

