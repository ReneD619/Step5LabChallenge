USE genericrestaurant;

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(20),
  Price DOUBLE
);

CREATE TABLE Employees (
  EmployeeID INT PRIMARY KEY,
  LastName VARCHAR(20),
  FirstName VARCHAR(20),
  Title VARCHAR(20)
);

CREATE TABLE Foods (
  FoodsID INT PRIMARY KEY,
  FoodName VARCHAR(20),
  Cost DOUBLE
);

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  LastName VARCHAR(20),
  FirstName VARCHAR(20),
  Email VARCHAR(50)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ProductID INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID)
  REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
  OrderDetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Suppliers (
  SupplierID INT PRIMARY KEY,
  CompanyName VARCHAR(20),
  ContactName VARCHAR(20),
  ContactTitle VARCHAR(20)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
  (154, 'Breakfast', 9.99),
  (345, 'Lunch', 14.99),
  (287, 'Dinner', 19.99);

INSERT INTO Employees (EmployeeID, LastName, FirstName, Title)
VALUES
  (1, 'Jerry', 'Nyumah', 'Manager'),
  (2, 'Zhaymauri', 'Lyles', 'Server'),
  (3, 'LaPorscia', 'Jackson', 'Chef');

INSERT INTO Foods (FoodsID, FoodName, Cost)
VALUES
  (1, 'Pizza', 9.99),
  (2, 'Burger', 8.99),
  (3, 'Pasta', 12.99);

INSERT INTO Customers (CustomerID, LastName, FirstName, Email)
VALUES
  (1, 'Trayshawn', 'Seamster', 'Trayshawn@yahoo.com'),
  (2, 'Jack', 'Yang', 'Jack@yahoo.com'),
  (3, 'Joshua', 'Wiley', 'Joshua@yahoo.com');

INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate)
VALUES
  (176, 1, 154, '2023-05-30'),
  (234, 2, 345, '2023-02-31'),
  (309, 3, 287, '2023-09-01');

INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity)
VALUES
  (198, 176, 154, 232),
  (212, 234, 345, 167),
  (389, 309, 287, 365);

INSERT INTO Suppliers (SupplierID, CompanyName, ContactName, ContactTitle)
VALUES
  (1, 'RDF', 'Rene Dobgima', 'CEO'),
  (2, 'POP', 'Mamoon Salam', 'Sales Manager'),
  (3, 'WFP', 'Yingchi Thao', 'Account Manager'),
  (4, 'VNB', 'Gideon Gyasi', 'Purchasing Manager');







