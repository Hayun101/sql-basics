CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY,
    FullName   VARCHAR(100) NOT NULL,
    Email      VARCHAR(120) UNIQUE NOT NULL
);

CREATE TABLE Products (
    ProductId INT PRIMARY KEY,
    Name      VARCHAR(100) NOT NULL,
    Price     DECIMAL(10,2) NOT NULL
);

CREATE TABLE Orders (
    OrderId    INT PRIMARY KEY,
    CustomerId INT NOT NULL,
    ProductId  INT NOT NULL,
    Quantity   INT NOT NULL,
    OrderDate  DATE NOT NULL,

    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId),
    FOREIGN KEY (ProductId)  REFERENCES Products(ProductId)
);
