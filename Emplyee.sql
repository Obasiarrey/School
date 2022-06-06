--Part 3

CREATE TABLE tblEmployee(
    EmployeeID int NOT NULL,
    LastName VARCHAR(40) NOT NULL,
    FirstName VARCHAR(40) NOT NULL,
    Address VARCHAR(40) NOT NULL,
    City VARCHAR(40) NOT NULL,
    Province VARCHAR(40) NOT NULL,
    PostalCode VARCHAR(40) NOT NULL,
    Phone INT(40) NOT NULL,
    Salary INT(40) NOT NULL,
    PRIMARY KEY (EmployeeID)
    );

    INSERT INTO tblemployee (LastName, FirstName, Address, City, Province, PostalCode, Phone, Salary) VALUES('Moneke', 'Obasiarrey', 'Sandpit', 'BUea', 'Southwest', 'P.O BOX 69', '652812371', '10000000');
    INSERT INTO tblEmployee (LastName, FirstName, Address, City, Province, PostalCode, Phone, Salary) VALUES('Magbor', 'Elizabeth', 'Ndop', 'limbe', 'Southwest', 'P.O BOX 128', '653812361', '12000000');
    INSERT INTO tblEmployee (LastName, FirstName, Address, City, Province, PostalCode, Phone, Salary) VALUES('Njume', 'Francis', 'Sandpit', 'Douala', 'Littoral', 'P.O BOX 123', '655812971', '10000000');
    INSERT INTO tblEmployee (LastName, FirstName, Address, City, Province, PostalCode, Phone, Salary) VALUES('Limoga', 'Charles', 'Nkongsamba', 'Bamenda', 'NorthWest', 'P.O BOX 63', '658212871', '10000000');
    INSERT INTO tblEmployee (LastName, FirstName, Address, City, Province, PostalCode, Phone, Salary) VALUES('Mukete', 'Praise', 'Sandpit', 'BUea', 'Southwest', 'P.O BOX 68', '652912971', '10000000');

    ALTER TABLE tblOrders ADD FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
    ALTER TABLE tblOrders ADD TotalSales INT NULL;

    UPDATE tblOrders
    SET TotalSales = (SELECT COUNT(OrderID) FROM tblOrderDetails WHERE tblOrders.OrderID = tblOrderDetails.OrderID);