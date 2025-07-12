create database HomeLoan;

use homeLoan;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DOB DATE,
    Address VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);
desc customers;

CREATE TABLE Loan_Types (
    LoanTypeID INT PRIMARY KEY,
    LoanName VARCHAR(50),
    InterestRate DECIMAL(5, 2),
    MaxAmount DECIMAL(15, 2),
    DurationMonths INT
);
desc loan_types;

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanTypeID INT,
    BranchID INT,
    LoanAmount DECIMAL(15, 2),
    LoanDate DATE,
    DueDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (LoanTypeID) REFERENCES Loan_Types(LoanTypeID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);
desc loans;
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    LoanID INT,
    PaymentDate DATE,
    AmountPaid DECIMAL(15, 2),
    RemainingBalance DECIMAL(15, 2),
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);
desc payments;
CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(50),
    BranchAddress VARCHAR(100),
    Phone VARCHAR(15)
);
desc branches;
CREATE TABLE Loan_Approvals (
    ApprovalID INT PRIMARY KEY,
    LoanID INT,
    ApprovalDate DATE,
    ApprovedBy VARCHAR(50),
    ApprovalStatus VARCHAR(20),
    Conditions VARCHAR(200),
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID)
);
desc loan_approvals;

INSERT INTO Customers (CustomerID, FirstName, LastName, DOB, Address, Phone, Email) VALUES
(1, 'John', 'Doe', '1985-05-15', '123 Elm St', '555-1001', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '1990-08-22', '456 Oak St', '555-1002', 'jane.smith@example.com'),
(3, 'Mark', 'Johnson', '1978-12-12', '789 Pine St', '555-1003', 'mark.johnson@example.com'),
(4, 'Emily', 'Davis', '1982-03-10', '101 Maple St', '555-1004', 'emily.davis@example.com'),
(5, 'Michael', 'Brown', '1995-09-25', '111 Cedar St', '555-1005', 'michael.brown@example.com'),
(6, 'Sarah', 'Wilson', '1988-01-18', '222 Birch St', '555-1006', 'sarah.wilson@example.com'),
(7, 'David', 'Miller', '1975-07-23', '333 Cherry St', '555-1007', 'david.miller@example.com'),
(8, 'Laura', 'Taylor', '1983-11-11', '444 Walnut St', '555-1008', 'laura.taylor@example.com'),
(9, 'James', 'Anderson', '1991-04-05', '555 Spruce St', '555-1009', 'james.anderson@example.com'),
(10, 'Sophia', 'Thomas', '1986-06-17', '666 Chestnut St', '555-1010', 'sophia.thomas@example.com'),
(11, 'Daniel', 'Lee', '1972-02-09', '777 Magnolia St', '555-1011', 'daniel.lee@example.com'),
(12, 'Olivia', 'Harris', '1993-08-03', '888 Ash St', '555-1012', 'olivia.harris@example.com'),
(13, 'Matthew', 'Martin', '1980-10-21', '999 Poplar St', '555-1013', 'matthew.martin@example.com'),
(14, 'Isabella', 'Clark', '1997-09-02', '100 Oakwood St', '555-1014', 'isabella.clark@example.com'),
(15, 'Ethan', 'Walker', '1984-03-25', '110 Maplewood St', '555-1015', 'ethan.walker@example.com'),
(16, 'Mia', 'Hall', '1987-12-30', '120 Pinewood St', '555-1016', 'mia.hall@example.com'),
(17, 'Alexander', 'Allen', '1992-01-14', '130 Cedarwood St', '555-1017', 'alexander.allen@example.com'),
(18, 'Ava', 'Young', '1989-05-09', '140 Birchwood St', '555-1018', 'ava.young@example.com'),
(19, 'Benjamin', 'King', '1981-06-27', '150 Cherrywood St', '555-1019', 'benjamin.king@example.com'),
(20, 'Charlotte', 'Scott', '1985-10-18', '160 Elmwood St', '555-1020', 'charlotte.scott@example.com'),
(21, 'Liam', 'Garcia', '1980-01-19', '112 Willow St', '555-1021', 'liam.garcia@example.com'),
(22, 'Amelia', 'Martinez', '1992-03-08', '221 Oak Blvd', '555-1022', 'amelia.martinez@example.com'),
(23, 'Oliver', 'Robinson', '1989-12-17', '333 Lakeview St', '555-1023', 'oliver.robinson@example.com'),
(24, 'Emma', 'Lopez', '1977-04-05', '451 Elmwood Ave', '555-1024', 'emma.lopez@example.com'),
(25, 'Noah', 'Gonzalez', '1994-07-12', '567 Beachside Dr', '555-1025', 'noah.gonzalez@example.com'),
(26, 'Aiden', 'Perez', '1986-09-23', '789 Redwood Ave', '555-1026', 'aiden.perez@example.com'),
(27, 'Sophia', 'Sanchez', '1981-02-13', '888 Greenwood St', '555-1027', 'sophia.sanchez@example.com'),
(28, 'Lucas', 'Torres', '1995-10-08', '999 Maple Ave', '555-1028', 'lucas.torres@example.com'),
(29, 'Ava', 'Rivera', '1988-06-24', '101 Cedar St', '555-1029', 'ava.rivera@example.com'),
(30, 'Ethan', 'Price', '1990-11-01', '202 Oak St', '555-1030', 'ethan.price@example.com'),
(31, 'Charlotte', 'Diaz', '1985-08-31', '303 Birch St', '555-1031', 'charlotte.diaz@example.com'),
(32, 'William', 'Reed', '1979-03-20', '404 Spruce St', '555-1032', 'william.reed@example.com'),
(33, 'Mason', 'Ramirez', '1984-07-29', '505 Palm St', '555-1033', 'mason.ramirez@example.com'),
(34, 'Isabella', 'Flores', '1991-12-22', '606 Willow Dr', '555-1034', 'isabella.flores@example.com'),
(35, 'James', 'Alexander', '1982-09-14', '707 Sunset Blvd', '555-1035', 'james.alexander@example.com'),
(36, 'Harper', 'Carter', '1996-05-02', '808 Lakeview Ave', '555-1036', 'harper.carter@example.com'),
(37, 'Henry', 'Phillips', '1983-10-17', '909 Maplewood Dr', '555-1037', 'henry.phillips@example.com'),
(38, 'Ella', 'Evans', '1987-02-26', '1000 Oakdale St', '555-1038', 'ella.evans@example.com'),
(39, 'Sebastian', 'Edwards', '1976-06-13', '1100 Cedarwood Dr', '555-1039', 'sebastian.edwards@example.com'),
(40, 'Luna', 'Collins', '1993-11-19', '1200 Birchwood Ave', '555-1040', 'luna.collins@example.com'),
(41, 'Benjamin', 'Morgan', '1981-03-12', '1401 Pine St', '555-1041', 'benjamin.morgan@example.com'),
(42, 'Mia', 'Kelly', '1995-09-30', '1402 Grove St', '555-1042', 'mia.kelly@example.com'),
(43, 'Logan', 'Howard', '1987-06-20', '1403 Bay Ave', '555-1043', 'logan.howard@example.com'),
(44, 'Scarlett', 'Brooks', '1980-11-15', '1404 Elmwood St', '555-1044', 'scarlett.brooks@example.com'),
(45, 'Alexander', 'Cook', '1978-02-02', '1405 Aspen Rd', '555-1045', 'alexander.cook@example.com'),
(46, 'Riley', 'Gray', '1993-07-19', '1406 Park Ave', '555-1046', 'riley.gray@example.com'),
(47, 'Zoe', 'Ward', '1985-08-07', '1407 Ocean Blvd', '555-1047', 'zoe.ward@example.com'),
(48, 'Nathan', 'Lee', '1990-10-21', '1408 Hilltop Rd', '555-1048', 'nathan.lee@example.com'),
(49, 'Leah', 'Bennett', '1983-12-05', '1409 Cedar Ave', '555-1049', 'leah.bennett@example.com'),
(50, 'Matthew', 'Jenkins', '1977-04-25', '1410 Maplewood Dr', '555-1050', 'matthew.jenkins@example.com'),
(51, 'Hannah', 'Cruz', '1994-01-14', '1411 Sunrise St', '555-1051', 'hannah.cruz@example.com'),
(52, 'David', 'Sanders', '1986-03-08', '1412 Sunset Dr', '555-1052', 'david.sanders@example.com'),
(53, 'Layla', 'Ramirez', '1989-09-29', '1413 Evergreen Blvd', '555-1053', 'layla.ramirez@example.com'),
(54, 'Michael', 'Ross', '1992-06-17', '1414 River Rd', '555-1054', 'michael.ross@example.com'),
(55, 'Madison', 'Powell', '1984-12-18', '1415 Meadow St', '555-1055', 'madison.powell@example.com'),
(56, 'Jack', 'Peterson', '1983-11-11', '1416 Shoreline Dr', '555-1056', 'jack.peterson@example.com'),
(57, 'Aria', 'Sullivan', '1995-04-01', '1417 West Ave', '555-1057', 'aria.sullivan@example.com'),
(58, 'Daniel', 'Hughes', '1980-05-26', '1418 East Blvd', '555-1058', 'daniel.hughes@example.com'),
(59, 'Grace', 'Price', '1987-10-30', '1419 North Dr', '555-1059', 'grace.price@example.com'),
(60, 'Carter', 'Foster', '1991-08-05', '1420 South St', '555-1060', 'carter.foster@example.com'),
(61, 'Addison', 'Butler', '1984-06-03', '1421 Olive Rd', '555-1061', 'addison.butler@example.com'),
(62, 'Owen', 'Simmons', '1979-07-07', '1422 Ridgeview Ln', '555-1062', 'owen.simmons@example.com'),
(63, 'Ellie', 'Gonzales', '1988-02-14', '1423 Harbor Dr', '555-1063', 'ellie.gonzales@example.com'),
(64, 'Wyatt', 'Bryant', '1982-11-08', '1424 Heritage Blvd', '555-1064', 'wyatt.bryant@example.com'),
(65, 'Aurora', 'Alexander', '1986-09-13', '1425 Central Ave', '555-1065', 'aurora.alexander@example.com'),
(66, 'Luke', 'Russell', '1978-03-24', '1426 Prairie St', '555-1066', 'luke.russell@example.com'),
(67, 'Aubrey', 'Griffin', '1985-10-02', '1427 Oceanview Dr', '555-1067', 'aubrey.griffin@example.com'),
(68, 'Christopher', 'Hayes', '1990-06-11', '1428 Valley Rd', '555-1068', 'christopher.hayes@example.com'),
(69, 'Lily', 'Murray', '1983-04-15', '1429 Highland Ave', '555-1069', 'lily.murray@example.com'),
(70, 'Gabriel', 'Harper', '1984-12-03', '1430 Brookside Rd', '555-1070', 'gabriel.harper@example.com'),
(71, 'Violet', 'Montgomery', '1993-05-19', '1431 Fox Ln', '555-1071', 'violet.montgomery@example.com'),
(72, 'Jayden', 'Stone', '1979-08-27', '1432 Woodland Dr', '555-1072', 'jayden.stone@example.com'),
(73, 'Sofia', 'Greene', '1986-07-18', '1433 Summit St', '555-1073', 'sofia.greene@example.com'),
(74, 'Henry', 'West', '1991-09-25', '1434 Riverbank Rd', '555-1074', 'henry.west@example.com'),
(75, 'Zoey', 'Porter', '1988-10-12', '1435 Pinewood Ln', '555-1075', 'zoey.porter@example.com'),
(76, 'Ryan', 'Fowler', '1985-01-04', '1436 Maple St', '555-1076', 'ryan.fowler@example.com'),
(77, 'Stella', 'Hansen', '1987-08-23', '1437 Elm St', '555-1077', 'stella.hansen@example.com'),
(78, 'Dylan', 'Hale', '1989-06-16', '1438 Birch Rd', '555-1078', 'dylan.hale@example.com'),
(79, 'Lucy', 'Beck', '1990-03-09', '1439 Oak Dr', '555-1079', 'lucy.beck@example.com'),
(80, 'Samuel', 'Bowen', '1977-02-28', '1440 Sycamore St', '555-1080', 'samuel.bowen@example.com'),
(81, 'Paisley', 'Hawkins', '1995-12-14', '1441 Poplar Ave', '555-1081', 'paisley.hawkins@example.com'),
(82, 'Jacob', 'Spencer', '1983-04-22', '1442 Cedarwood Dr', '555-1082', 'jacob.spencer@example.com'),
(83, 'Everly', 'Barker', '1986-07-30', '1443 Lakewood Ln', '555-1083', 'everly.barker@example.com'),
(84, 'Isaiah', 'Gardner', '1992-10-13', '1444 Garden St', '555-1084', 'isaiah.gardner@example.com'),
(85, 'Willow', 'Morales', '1980-01-05', '1445 Oak St', '555-1085', 'willow.morales@example.com'),
(86, 'Julian', 'Garrett', '1988-05-28', '1446 Highland Rd', '555-1086', 'julian.garrett@example.com'),
(87, 'Savannah', 'Lambert', '1984-03-07', '1447 Bridge St', '555-1087', 'savannah.lambert@example.com'),
(88, 'Aidan', 'Hogan', '1979-11-11', '1448 Willow Rd', '555-1088', 'aidan.hogan@example.com'),
(89, 'Penelope', 'Dean', '1993-06-25', '1449 Forest Ln', '555-1089', 'penelope.dean@example.com'),
(90, 'Connor', 'Carpenter', '1987-01-03', '1450 Meadowbrook Ave', '555-1090', 'connor.carpenter@example.com'),
(91, 'Bella', 'Lopez', '1994-04-29', '1451 Woodside Dr', '555-1091', 'bella.lopez@example.com'),
(92, 'Jonathan', 'Graves', '1980-02-16', '1452 Lakeview Rd', '555-1092', 'jonathan.graves@example.com'),
(93, 'Hazel', 'Dixon', '1983-09-20', '1453 Green St', '555-1093', 'hazel.dixon@example.com'),
(94, 'Levi', 'Wallace', '1978-12-05', '1454 Riverbend Ln', '555-1094', 'levi.wallace@example.com'),
(95, 'Eleanor', 'Owens', '1995-08-14', '1455 Seaside Blvd', '555-1095', 'eleanor.owens@example.com'),
(96, 'Eli', 'Burns', '1984-01-25', '1456 Arbor St', '555-1096', 'eli.burns@example.com'),
(97, 'Riley', 'Knight', '1991-03-03', '1457 Cedar Dr', '555-1097', 'riley.knight@example.com'),
(98, 'Lillian', 'Hamilton', '1985-07-09', '1458 Maplewood Ave', '555-1098', 'lillian.hamilton@example.com'),
(99, 'Lincoln', 'Gonzalez', '1989-11-16', '1459 Palm Rd', '555-1099', 'lincoln.gonzalez@example.com'),
(100, 'Camila', 'Ford', '1981-05-27', '1460 North Blvd', '555-1100', 'camila.ford@example.com');

INSERT INTO Loan_Types (LoanTypeID, LoanName, InterestRate, MaxAmount, DurationMonths) VALUES
(1, 'Fixed Rate Mortgage', 4.5, 500000, 360),
(2, 'Adjustable Rate Mortgage', 3.8, 400000, 240),
(3, 'Interest-Only Loan', 5.2, 300000, 180),
(4, 'FHA Loan', 3.5, 350000, 360),
(5, 'VA Loan', 3.2, 400000, 360),
(6, 'Jumbo Loan', 4.7, 600000, 360),
(7, 'Conforming Loan', 3.9, 450000, 300),
(8, 'Bridge Loan', 5.5, 200000, 24);

INSERT INTO Branches (BranchID, BranchName, BranchAddress, Phone) VALUES
(1, 'Downtown Branch', '100 Main St', '555-2001'),
(2, 'Uptown Branch', '200 High St', '555-2002'),
(3, 'Westside Branch', '300 Sunset Blvd', '555-2003'),
(4, 'Eastside Branch', '400 Sunrise Ave', '555-2004'),
(5, 'Southside Branch', '500 Oak Rd', '555-2005'),
(6, 'Northside Branch', '600 North Rd', '555-2006'),
(7, 'Central Branch', '700 Center St', '555-2007');

INSERT INTO Loans (LoanID, CustomerID, LoanTypeID, BranchID, LoanAmount, LoanDate, DueDate, Status) VALUES
(1, 1, 1, 1, 250000, '2023-01-01', '2053-01-01', 'Active'),
(2, 2, 2, 2, 200000, '2022-06-15', '2042-06-15', 'Active'),
(3, 3, 3, 3, 150000, '2023-02-10', '2038-02-10', 'Completed'),
(4, 4, 4, 4, 300000, '2023-05-20', '2053-05-20', 'Active'),
(5, 5, 5, 5, 275000, '2022-11-30', '2052-11-30', 'Defaulted'),
(6, 6, 1, 2, 180000, '2023-03-01', '2048-03-01', 'Active'),
(7, 7, 2, 3, 220000, '2023-04-25', '2043-04-25', 'Active'),
(8, 8, 3, 4, 160000, '2023-07-13', '2038-07-13', 'Completed'),
(9, 9, 4, 5, 295000, '2023-08-22', '2053-08-22', 'Active'),
(10, 10, 5, 1, 250000, '2022-12-01', '2052-12-01', 'Defaulted'),
(11, 11, 1, 2, 190000, '2023-05-15', '2053-05-15', 'Active'),
(12, 12, 2, 3, 205000, '2022-06-20', '2042-06-20', 'Active'),
(13, 13, 3, 4, 280000, '2023-09-11', '2048-09-11', 'Active'),
(14, 14, 4, 5, 245000, '2023-10-10', '2053-10-10', 'Completed'),
(15, 15, 5, 1, 315000, '2022-11-15', '2052-11-15', 'Defaulted'),
(16, 16, 1, 2, 275000, '2023-12-01', '2053-12-01', 'Active'),
(17, 17, 2, 3, 290000, '2023-02-15', '2043-02-15', 'Active'),
(18, 18, 3, 4, 165000, '2023-07-29', '2038-07-29', 'Completed'),
(19, 19, 4, 5, 230000, '2023-08-05', '2053-08-05', 'Active'),
(20, 20, 5, 1, 210000, '2023-03-12', '2053-03-12', 'Active'),
(21, 21, 1, 2, 190000, '2023-06-01', '2053-06-01', 'Active'),
(22, 22, 2, 3, 155000, '2022-12-10', '2042-12-10', 'Completed'),
(23, 23, 3, 4, 175000, '2023-07-30', '2048-07-30', 'Active'),
(24, 24, 4, 5, 250000, '2023-04-14', '2053-04-14', 'Active'),
(25, 25, 5, 1, 265000, '2022-10-01', '2052-10-01', 'Defaulted'),
(26, 26, 1, 2, 205000, '2023-01-15', '2053-01-15', 'Active'),
(27, 27, 2, 3, 225000, '2023-05-10', '2043-05-10', 'Active'),
(28, 28, 3, 4, 185000, '2022-11-18', '2038-11-18', 'Completed'),
(29, 29, 4, 5, 195000, '2023-09-10', '2053-09-10', 'Active'),
(30, 30, 5, 1, 240000, '2023-06-08', '2053-06-08', 'Defaulted'),
(31, 31, 1, 2, 270000, '2023-07-01', '2053-07-01', 'Active'),
(32, 32, 2, 3, 140000, '2022-08-15', '2042-08-15', 'Completed'),
(33, 33, 3, 4, 210000, '2023-05-29', '2048-05-29', 'Active'),
(34, 34, 4, 5, 220000, '2023-03-10', '2053-03-10', 'Active'),
(35, 35, 5, 1, 155000, '2023-02-28', '2053-02-28', 'Defaulted'),
(36, 36, 1, 2, 230000, '2022-04-20', '2052-04-20', 'Active'),
(37, 37, 2, 3, 160000, '2022-09-25', '2042-09-25', 'Completed'),
(38, 38, 3, 4, 275000, '2023-01-17', '2048-01-17', 'Active'),
(39, 39, 4, 5, 290000, '2023-08-22', '2053-08-22', 'Active'),
(40, 40, 5, 1, 260000, '2022-05-11', '2052-05-11', 'Defaulted'),
(41, 41, 1, 2, 300000, '2023-06-18', '2053-06-18', 'Active'),
(42, 42, 2, 3, 175000, '2022-07-07', '2042-07-07', 'Completed'),
(43, 43, 3, 4, 220000, '2023-08-25', '2048-08-25', 'Active'),
(44, 44, 4, 5, 265000, '2023-03-30', '2053-03-30', 'Active'),
(45, 45, 5, 1, 150000, '2022-06-05', '2052-06-05', 'Defaulted'),
(46, 46, 1, 2, 195000, '2023-09-15', '2053-09-15', 'Active'),
(47, 47, 2, 3, 280000, '2023-02-22', '2043-02-22', 'Active'),
(48, 48, 3, 4, 150000, '2023-11-02', '2038-11-02', 'Completed'),
(49, 49, 4, 5, 245000, '2023-07-09', '2053-07-09', 'Active'),
(50, 50, 5, 1, 185000, '2023-04-16', '2053-04-16', 'Defaulted'),
(51, 51, 1, 2, 230000, '2023-01-23', '2053-01-23', 'Active'),
(52, 52, 2, 3, 260000, '2022-11-02', '2042-11-02', 'Completed'),
(53, 53, 3, 4, 295000, '2023-06-09', '2048-06-09', 'Active'),
(54, 54, 4, 5, 280000, '2022-10-14', '2052-10-14', 'Active'),
(55, 55, 5, 1, 240000, '2023-07-22', '2053-07-22', 'Defaulted'),
(56, 56, 1, 2, 220000, '2023-09-12', '2053-09-12', 'Active'),
(57, 57, 2, 3, 200000, '2022-08-20', '2042-08-20', 'Completed'),
(58, 58, 3, 4, 190000, '2023-02-28', '2048-02-28', 'Active'),
(59, 59, 4, 5, 235000, '2023-05-12', '2053-05-12', 'Active'),
(60, 60, 5, 1, 210000, '2022-04-30', '2052-04-30', 'Defaulted'),
(61, 61, 1, 2, 270000, '2023-03-10', '2053-03-10', 'Active'),
(62, 62, 2, 3, 185000, '2022-12-22', '2042-12-22', 'Completed'),
(63, 63, 3, 4, 240000, '2023-08-17', '2048-08-17', 'Active'),
(64, 64, 4, 5, 220000, '2023-06-30', '2053-06-30', 'Active'),
(65, 65, 5, 1, 195000, '2023-01-01', '2053-01-01', 'Defaulted'),
(66, 66, 1, 2, 250000, '2023-07-04', '2053-07-04', 'Active'),
(67, 67, 2, 3, 215000, '2023-03-20', '2043-03-20', 'Active'),
(68, 68, 3, 4, 160000, '2022-08-10', '2038-08-10', 'Completed'),
(69, 69, 4, 5, 230000, '2023-05-15', '2053-05-15', 'Active'),
(70, 70, 5, 1, 210000, '2022-11-20', '2052-11-20', 'Defaulted'),
(71, 71, 1, 2, 180000, '2023-06-18', '2053-06-18', 'Active'),
(72, 72, 2, 3, 190000, '2023-04-12', '2043-04-12', 'Active'),
(73, 73, 3, 4, 275000, '2023-02-01', '2048-02-01', 'Active'),
(74, 74, 4, 5, 260000, '2023-09-05', '2053-09-05', 'Active'),
(75, 75, 5, 1, 220000, '2022-07-18', '2052-07-18', 'Defaulted'),
(76, 76, 1, 2, 235000, '2023-07-25', '2053-07-25', 'Active'),
(77, 77, 2, 3, 270000, '2023-03-07', '2043-03-07', 'Active'),
(78, 78, 3, 4, 280000, '2023-08-13', '2048-08-13', 'Active'),
(79, 79, 4, 5, 250000, '2023-01-22', '2053-01-22', 'Active'),
(80, 80, 5, 1, 215000, '2023-05-01', '2053-05-01', 'Defaulted'),
(81, 81, 1, 2, 200000, '2023-02-15', '2053-02-15', 'Active'),
(82, 82, 2, 3, 255000, '2023-07-10', '2043-07-10', 'Active'),
(83, 83, 3, 4, 230000, '2023-09-20', '2048-09-20', 'Active'),
(84, 84, 4, 5, 240000, '2022-11-12', '2052-11-12', 'Active'),
(85, 85, 5, 1, 230000, '2023-06-10', '2053-06-10', 'Defaulted'),
(86, 86, 1, 2, 270000, '2023-01-05', '2053-01-05', 'Active'),
(87, 87, 2, 3, 195000, '2023-04-08', '2043-04-08', 'Active'),
(88, 88, 3, 4, 265000, '2023-07-22', '2048-07-22', 'Active'),
(89, 89, 4, 5, 220000, '2022-08-26', '2052-08-26', 'Active'),
(90, 90, 5, 1, 190000, '2023-05-17', '2053-05-17', 'Defaulted'),
(91, 91, 1, 2, 250000, '2023-09-01', '2053-09-01', 'Active'),
(92, 92, 2, 3, 265000, '2022-12-04', '2042-12-04', 'Completed'),
(93, 93, 3, 4, 230000, '2023-06-28', '2048-06-28', 'Active'),
(94, 94, 4, 5, 215000, '2023-08-04', '2053-08-04', 'Active'),
(95, 95, 5, 1, 240000, '2022-07-02', '2052-07-02', 'Defaulted'),
(96, 96, 1, 2, 275000, '2023-01-27', '2053-01-27', 'Active'),
(97, 97, 2, 3, 250000, '2023-05-08', '2043-05-08', 'Active'),
(98, 98, 3, 4, 180000, '2023-06-12', '2048-06-12', 'Active'),
(99, 99, 4, 5, 295000, '2023-03-04', '2053-03-04', 'Active'),
(100, 100, 5, 1, 265000, '2022-10-30', '2052-10-30', 'Defaulted');




INSERT INTO Payments (PaymentID, LoanID, PaymentDate, AmountPaid, RemainingBalance) VALUES
(1, 1, '2023-02-01', 1000, 249000),
(2, 1, '2023-03-01', 1000, 248000),
(3, 2, '2022-07-01', 800, 199200),
(4, 2, '2022-08-01', 800, 198400),
(5, 3, '2023-03-01', 1500, 148500),
(6, 4, '2023-06-01', 1250, 298750),
(7, 4, '2023-07-01', 1250, 297500),
(8, 5, '2022-12-30', 900, 274100),
(9, 5, '2023-01-30', 900, 273200),
(10, 6, '2023-04-01', 850, 179150),
(11, 6, '2023-05-01', 850, 178300),
(12, 7, '2023-05-25', 1100, 218900),
(13, 8, '2023-08-13', 900, 159100),
(14, 8, '2023-09-13', 900, 158200),
(15, 9, '2023-09-22', 1200, 293800),
(16, 10, '2023-01-01', 1000, 249000),
(17, 11, '2023-06-15', 950, 188050),
(18, 12, '2022-07-20', 850, 204150),
(19, 13, '2023-10-11', 1300, 278700),
(20, 14, '2023-11-10', 1000, 244000),
(21, 15, '2023-03-01', 900, 199100),
(22, 15, '2023-04-01', 900, 198200),
(23, 16, '2023-02-15', 1100, 258900),
(24, 16, '2023-03-15', 1100, 257800),
(25, 17, '2023-01-10', 850, 179150),
(26, 18, '2023-02-10', 1200, 196800),
(27, 18, '2023-03-10', 1200, 195600),
(28, 19, '2023-06-05', 1000, 149000),
(29, 19, '2023-07-05', 1000, 148000),
(30, 20, '2023-05-01', 1250, 298750),
(31, 21, '2023-06-01', 1250, 297500),
(32, 22, '2023-05-10', 950, 154050),
(33, 22, '2023-06-10', 950, 153100),
(34, 23, '2023-07-12', 1050, 179950),
(35, 23, '2023-08-12', 1050, 178900),
(36, 24, '2023-03-25', 1000, 244000),
(37, 25, '2023-04-15', 950, 188050),
(38, 26, '2022-10-20', 850, 204150),
(39, 27, '2023-12-11', 1300, 278700),
(40, 28, '2024-01-10', 1000, 244000),
(41, 29, '2023-06-15', 950, 189050),
(42, 29, '2023-07-15', 950, 188100),
(43, 30, '2023-02-01', 1200, 288800),
(44, 30, '2023-03-01', 1200, 287600),
(45, 31, '2023-04-05', 900, 274100),
(46, 31, '2023-05-05', 900, 273200),
(47, 32, '2023-09-18', 1150, 229850),
(48, 33, '2023-10-22', 1100, 178900),
(49, 34, '2023-11-25', 850, 119150),
(50, 35, '2023-12-20', 1300, 238700),
(51, 21, '2023-02-02', 1050, 278950),
(52, 21, '2023-03-02', 1050, 277900),
(53, 22, '2022-06-18', 950, 319050),
(54, 22, '2022-07-18', 950, 318100),
(55, 23, '2023-09-11', 1500, 178500),
(56, 24, '2022-10-20', 1100, 248900),
(57, 24, '2022-11-20', 1100, 247800),
(58, 25, '2023-04-25', 1150, 228850),
(59, 25, '2023-05-25', 1150, 227700),
(60, 26, '2023-08-07', 900, 149100),
(61, 26, '2023-09-07', 900, 148200),
(62, 27, '2023-12-12', 1300, 273700),
(63, 28, '2023-01-05', 900, 219100),
(64, 28, '2023-02-05', 900, 218200),
(65, 29, '2023-05-01', 1200, 198800),
(66, 29, '2023-06-01', 1200, 197600),
(67, 30, '2023-03-15', 1250, 298750),
(68, 30, '2023-04-15', 1250, 297500),
(69, 31, '2023-09-29', 850, 169150),
(70, 32, '2023-12-10', 1050, 258950),
(71, 33, '2023-04-19', 1100, 278900),
(72, 34, '2023-11-02', 1200, 183800),
(73, 35, '2023-01-15', 950, 319050),
(74, 36, '2023-07-23', 1150, 273850),
(75, 37, '2023-05-12', 1100, 243900),
(76, 38, '2023-02-01', 1250, 223750),
(77, 39, '2023-10-01', 1050, 258950),
(78, 40, '2023-03-08', 1100, 193900),
(79, 21, '2023-04-02', 1050, 276850),
(80, 22, '2022-08-18', 950, 317150),
(81, 23, '2023-10-11', 1500, 177000),
(82, 24, '2022-12-20', 1100, 246700),
(83, 25, '2023-06-25', 1150, 226550),
(84, 26, '2023-10-07', 900, 147300),
(85, 27, '2024-01-12', 1300, 272400),
(86, 28, '2023-03-05', 900, 217300),
(87, 29, '2023-07-01', 1200, 196400),
(88, 30, '2023-05-15', 1250, 296250),
(89, 31, '2023-11-29', 850, 168300),
(90, 32, '2024-01-10', 1050, 257900),
(91, 33, '2023-06-19', 1100, 277800),
(92, 34, '2023-12-02', 1200, 182600),
(93, 35, '2023-03-15', 950, 318100),
(94, 36, '2023-08-23', 1150, 272700),
(95, 37, '2023-06-12', 1100, 242800),
(96, 38, '2023-04-01', 1250, 222500),
(97, 39, '2023-11-01', 1050, 257900),
(98, 40, '2023-05-08', 1100, 192800),
(99, 21, '2023-05-02', 1050, 275800),
(100, 22, '2022-09-18', 950, 316200);

INSERT INTO Loan_Approvals (ApprovalID, LoanID, ApprovalDate, ApprovedBy, ApprovalStatus, Conditions) VALUES
(1, 1, '2023-01-02', 'John Doe', 'Approved', 'Standard conditions apply'),
(2, 2, '2022-06-16', 'Jane Smith', 'Approved', 'Income verification required'),
(3, 3, '2023-02-12', 'Samuel Lee', 'Approved', 'Collateral required'),
(4, 4, '2023-05-21', 'Alicia Green', 'Approved', 'Excellent credit history'),
(5, 5, '2022-12-01', 'John Doe', 'Rejected', 'High debt-to-income ratio'),
(6, 6, '2023-03-02', 'Jane Smith', 'Approved', 'Standard terms'),
(7, 7, '2023-04-26', 'Samuel Lee', 'Approved', 'Income proof verified'),
(8, 8, '2023-07-14', 'Alicia Green', 'Approved', 'Collateral confirmed'),
(9, 9, '2023-08-23', 'John Doe', 'Approved', 'High income, approved'),
(10, 10, '2022-12-02', 'Jane Smith', 'Rejected', 'Insufficient credit history'),
(11, 11, '2023-05-16', 'Samuel Lee', 'Approved', 'Good credit rating'),
(12, 12, '2022-06-21', 'Alicia Green', 'Approved', 'Verified with conditions'),
(13, 13, '2023-09-12', 'John Doe', 'Approved', 'Approved on condition of collateral'),
(14, 14, '2023-10-11', 'Jane Smith', 'Approved', 'Regular repayment'),
(15, 15, '2022-11-16', 'Samuel Lee', 'Rejected', 'High risk score'),
(16, 16, '2023-12-01', 'Alicia Green', 'Approved', 'Approved, standard conditions'),
(17, 17, '2023-02-15', 'John Doe', 'Approved', 'Proof of income required'),
(18, 18, '2023-07-30', 'Jane Smith', 'Approved', 'Low loan amount'),
(19, 19, '2023-08-06', 'Samuel Lee', 'Approved', 'Approved with verified documents'),
(20, 20, '2023-03-13', 'Alicia Green', 'Approved', 'Conditionally approved'),
(21, 21, '2023-06-02', 'John Doe', 'Approved', 'Standard conditions'),
(22, 22, '2022-12-11', 'Jane Smith', 'Approved', 'Low risk, approved'),
(23, 23, '2023-07-31', 'Samuel Lee', 'Approved', 'Approved with strict conditions'),
(24, 24, '2023-04-15', 'Alicia Green', 'Approved', 'Income documentation complete'),
(25, 25, '2022-10-02', 'John Doe', 'Rejected', 'Credit score below required threshold'),
(26, 26, '2023-01-16', 'Jane Smith', 'Approved', 'Collateral secured'),
(27, 27, '2023-05-11', 'Samuel Lee', 'Approved', 'No further conditions'),
(28, 28, '2022-11-19', 'Alicia Green', 'Approved', 'Conditionally approved with collateral'),
(29, 29, '2023-09-11', 'John Doe', 'Approved', 'Income verification required'),
(30, 30, '2023-06-09', 'Jane Smith', 'Rejected', 'High debt profile'),
(31, 31, '2023-07-02', 'Samuel Lee', 'Approved', 'Reviewed and approved'),
(32, 32, '2022-08-16', 'Alicia Green', 'Approved', 'Standard terms applied'),
(33, 33, '2023-05-30', 'John Doe', 'Approved', 'Low credit risk'),
(34, 34, '2023-03-11', 'Jane Smith', 'Approved', 'Approved with conditions'),
(35, 35, '2023-02-28', 'Samuel Lee', 'Rejected', 'Debt-to-income too high'),
(36, 36, '2022-04-21', 'Alicia Green', 'Approved', 'Conditions met'),
(37, 37, '2022-09-26', 'John Doe', 'Approved', 'Collateral verified'),
(38, 38, '2023-01-18', 'Jane Smith', 'Approved', 'Customer credit score good'),
(39, 39, '2023-08-23', 'Samuel Lee', 'Approved', 'Approved without conditions'),
(40, 40, '2022-05-12', 'Alicia Green', 'Rejected', 'Income verification failed'),
(41, 41, '2023-06-19', 'John Doe', 'Approved', 'Collateral accepted'),
(42, 42, '2022-07-08', 'Jane Smith', 'Approved', 'Standard terms'),
(43, 43, '2023-08-26', 'Samuel Lee', 'Approved', 'Accepted on second review'),
(44, 44, '2023-03-31', 'Alicia Green', 'Approved', 'Good financial standing'),
(45, 45, '2022-06-06', 'John Doe', 'Rejected', 'Debt ratio high'),
(46, 46, '2023-09-16', 'Jane Smith', 'Approved', 'Collateral conditions met'),
(47, 47, '2023-02-23', 'Samuel Lee', 'Approved', 'Income stable'),
(48, 48, '2023-11-03', 'Alicia Green', 'Approved', 'Approved after collateral verification'),
(49, 49, '2023-07-10', 'John Doe', 'Approved', 'Standard terms apply'),
(50, 50, '2023-04-17', 'Jane Smith', 'Rejected', 'Risk level too high'),
(51, 51, '2023-01-24', 'Samuel Lee', 'Approved', 'Approved with low risk'),
(52, 52, '2022-11-03', 'Alicia Green', 'Approved', 'Standard approval'),
(53, 53, '2023-06-10', 'John Doe', 'Approved', 'Income verified'),
(54, 54, '2022-10-15', 'Jane Smith', 'Approved', 'Collateral met conditions'),
(55, 55, '2023-07-23', 'Samuel Lee', 'Rejected', 'Risk profile too high'),
(56, 56, '2023-09-13', 'Alicia Green', 'Approved', 'Low income-to-debt ratio'),
(57, 57, '2022-08-21', 'John Doe', 'Approved', 'Good financial history'),
(58, 58, '2023-02-28', 'Jane Smith', 'Approved', 'Accepted'),
(59, 59, '2023-05-13', 'Samuel Lee', 'Approved', 'Standard terms'),
(60, 60, '2022-04-30', 'Alicia Green', 'Rejected', 'Failed credit check'),
(61, 61, '2023-03-11', 'John Doe', 'Approved', 'Low risk'),
(62, 62, '2022-12-23', 'Jane Smith', 'Approved', 'Reviewed and approved'),
(63, 63, '2023-08-18', 'Samuel Lee', 'Approved', 'High collateral'),
(64, 64, '2023-07-01', 'Alicia Green', 'Approved', 'Standard approval'),
(65, 65, '2023-01-02', 'John Doe', 'Rejected', 'High debt'),
(66, 66, '2023-07-05', 'Jane Smith', 'Approved', 'Verified and approved'),
(67, 67, '2023-03-21', 'Samuel Lee', 'Approved', 'Approved'),
(68, 68, '2022-08-11', 'Alicia Green', 'Approved', 'Collateral secured'),
(69, 69, '2023-05-16', 'John Doe', 'Approved', 'Good credit profile'),
(70, 70, '2022-11-21', 'Jane Smith', 'Rejected', 'Insufficient income'),
(71, 71, '2023-06-19', 'Samuel Lee', 'Approved', 'Meets loan requirements'),
(72, 72, '2023-04-13', 'Alicia Green', 'Approved', 'Income and debt verified'),
(73, 73, '2023-02-02', 'John Doe', 'Approved', 'Risk level acceptable'),
(74, 74, '2023-09-06', 'Jane Smith', 'Approved', 'Loan approved'),
(75, 75, '2022-07-19', 'Samuel Lee', 'Rejected', 'Debt too high'),
(76, 76, '2023-07-26', 'Alicia Green', 'Approved', 'Good repayment history'),
(77, 77, '2023-03-08', 'John Doe', 'Approved', 'Collateral verified'),
(78, 78, '2023-08-14', 'Jane Smith', 'Approved', 'Low loan amount'),
(79, 79, '2023-01-23', 'Samuel Lee', 'Approved', 'Approved on condition'),
(80, 80, '2023-10-11', 'Alicia Green', 'Approved', 'Standard terms apply'),
(81, 81, '2023-03-02', 'John Doe', 'Approved', 'Conditions met'),
(82, 82, '2022-09-11', 'Jane Smith', 'Rejected', 'Insufficient collateral'),
(83, 83, '2023-04-01', 'Samuel Lee', 'Approved', 'Standard approval'),
(84, 84, '2023-02-14', 'Alicia Green', 'Approved', 'Income verified'),
(85, 85, '2023-11-02', 'John Doe', 'Rejected', 'High debt profile'),
(86, 86, '2023-09-19', 'Jane Smith', 'Approved', 'Good collateral'),
(87, 87, '2023-08-05', 'Samuel Lee', 'Approved', 'Approved after review'),
(88, 88, '2022-10-28', 'Alicia Green', 'Rejected', 'Credit score too low'),
(89, 89, '2023-06-10', 'John Doe', 'Approved', 'High income, approved'),
(90, 90, '2023-12-10', 'Jane Smith', 'Approved', 'Accepted'),
(91, 91, '2023-05-23', 'Samuel Lee', 'Rejected', 'High debt ratio'),
(92, 92, '2023-07-16', 'Alicia Green', 'Approved', 'Standard approval'),
(93, 93, '2023-02-10', 'John Doe', 'Rejected', 'Risk assessment failed'),
(94, 94, '2023-01-09', 'Jane Smith', 'Approved', 'Accepted with terms'),
(95, 95, '2022-11-25', 'Samuel Lee', 'Rejected', 'Income to debt high'),
(96, 96, '2023-04-30', 'Alicia Green', 'Approved', 'Low debt, approved'),
(97, 97, '2022-06-02', 'John Doe', 'Approved', 'Good financial standing'),
(98, 98, '2023-08-19', 'Jane Smith', 'Approved', 'Verified collateral'),
(99, 99, '2023-05-15', 'Samuel Lee', 'Rejected', 'Debt ratio too high'),
(100, 100, '2023-09-21', 'Alicia Green', 'Approved', 'Risk score acceptable');



-- 1. Question: Create a report that shows the status of each loan application, including the customer's name, loan amount, loan type, and the approval status.--
select concat(firstname," ",lastname) as Name,
 loanamount as loan_type,
 loanname as loan_amount,
 status
from customers
join loans on  Loans.loanid = customers.customerid
join loan_types on loan_types.loantypeid = loans.loantypeid;

-- 2. Question: Write a query to retrieve the payment history for a specific loan, showing the payment date, amount paid, and remaining balance.--
select * from Payments;
select loanname, paymentdate, amountpaid, remainingbalance 
from loan_types 
join loans on loans.loantypeid = loan_types.loantypeid
join payments on payments.loanid = loans.loanid;


-- 3. Question: Write a query to calculate the average loan amount for each loan type.--
select loanname, avg(loanamount) as average_loan_ammount
from loans
join loan_types on loan_types.loantypeid = loans.loantypeid
group by loanname;

-- 4. Question: Generate a list of loans that were rejected, including the customer's name, loan amount, and rejection reason (if any).--
select firstname, lastname, loanamount, approvalstatus as approval_status, conditions as Rejection_Reason
from loan_approvals 
join loans on loans.loanid = loan_approvals.loanid
join customers on customers.customerid = loans.customerid
where approvalstatus = 'Rejected';

-- 5. Question: Write a query to display the total number of loans and total loan amount for each branch.--
select branchname,
sum(loanid) as total_number_of_loans,
sum(loanamount) as total_loan_amount
from loans
join branches on branches.branchid = loans.branchid
group by branchname;



-- 6. categorize customers based on the total remaining balance they owe into categories such as "High Balance," "Medium Balance," and "Low Balance."-- 
select customers.customerid, customers.firstname, customers.lastname,
sum(payments.remainingbalance) as Total_remaining_balance,
Case 
When sum(payments.remainingbalance) > 700000 then "High Balance"
When sum(payments.remainingbalance) between 500000 and 700000 then "Medium Balance"
else "Low Balance"
End as Balance_category
from customers 
join loans on loans.customerid = customers.customerid
join payments on payments.loanid = loans.loanid
Group by customers.customerid, customers.firstname, customers.lastname;






-- Customer Insights--
-- Q1: "How many customers hold accounts at each branch, and what is the total balance for each branch?"--
select count(loans.customerid) as customers, branches.branchname, sum(payments.RemainingBalance) as total_balance
from branches
join loans on loans.branchid = branches.branchid
join payments on payments.loanid = loans.loanid
group by branches.branchname;

-- Q2: "Which customers have the highest account balances? Retrieve the top five by balance."-- 
select customers.customerid, customers.firstname, customers.lastname, payments.RemainingBalance as Account_Balance
from customers 
join loans on loans.customerid = customers.customerid 
join payments on payments.loanid = loans.loanid
order by Account_Balance desc
limit 5;

-- Q3: "Find all customers who have made a transaction over a certain high-value threshold within the last month." -- 
SELECT loanID, AmountPaid, PaymentDate 
FROM Payments 
WHERE AmountPaid >= 1000 ;

-- 4. question ceate a query that shows the total payments made by a customer for a specific loan --

select loans.customerid, firstname, lastname, loan_types.loanname, SUM(payments.amountpaid) AS total_payment
from loans
join payments ON payments.loanid = loans.loanid
join loan_types ON loan_types.loantypeid = loans.loantypeid
join customers on customers.customerid = loans.customerid
group by customers.firstname, customers.lastname, loans.customerid, loan_types.loanname;

-- Financial Analysis --
-- Q1: "Calculate the average, minimum, and maximum account balances for each branch." -- 
select branches.branchid, branches.branchname, avg(payments.remainingbalance) as Average_Account_Balance, max(payments.remainingbalance) as Max_Account_Balance , min(payments.remainingbalance) as Min_Account_Balance
from branches 
join loans on loans.branchid = branches.branchid
join payments on payments.loanid = loans.loanid
group by branchid;

-- Q2: "Calculate the total amount of money distributed in loans and list them by branch." --
select branches.branchid, branches.branchname, sum(loans.LoanAmount) as Total_amount_distributed
from branches
join loans on loans.branchid = branches.branchid 
group by branches.branchid;














