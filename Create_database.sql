-- Create Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255),
    SupplierAddress VARCHAR(255),
    SupplierContactDetails VARCHAR(255)
);

-- Create Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CarMaker VARCHAR(255),
    CarModel VARCHAR(255),
    CarColor VARCHAR(50),
    CarModelYear INT,
    CarPrice DECIMAL(10, 2)
    -- Add other relevant fields
);

-- Create Customers table
CREATE TABLE Customers (
    CustomerID VARCHAR(20) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Gender VARCHAR(10),
    JobTitle VARCHAR(255),
    PhoneNumber VARCHAR(20),
    EmailAddress VARCHAR(255),
    City VARCHAR(100),
    Country VARCHAR(100),
    CountryCode VARCHAR(10),
    State VARCHAR(100),
    CustomerAddress VARCHAR(255)
    -- Add other relevant fields
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID VARCHAR(20) PRIMARY KEY,
    CustomerID VARCHAR(20),
    ProductID INT,
    SupplierID INT, -- Adding SupplierID field
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    Shipping VARCHAR(50),
    PostalCode VARCHAR(20),
    Sales DECIMAL(15, 2),
    Quantity INT,
    Discount DECIMAL(5, 2),
    CreditCardType VARCHAR(50),
    CreditCard VARCHAR(20),
    CustomerFeedback VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID) -- Creating a reference to Suppliers table
    -- Add other relevant fields
);
