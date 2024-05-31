-- @block
-- Publisher (Penerbit)
CREATE TABLE Publisher (
    PublisherID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Country VARCHAR(50),
    Telephone VARCHAR(20),
    YearFounded INT
);
-- @block

-- @block
-- Book (Buku)
CREATE TABLE Book (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    PublicationYear INT NOT NULL,
    Pages INT NOT NULL,
    PublisherID INT REFERENCES Publisher(PublisherID)
);
-- @block

-- @block
-- Author (Penulis)
CREATE TABLE Author (
    AuthorID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    YearBorn INT,
    YearDeceased INT
);
-- @block

-- @block
-- Customer (Pelanggan)
CREATE TABLE Customer (
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Street VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Telephone VARCHAR(20)
);
-- @block

-- @block
-- UserAccount (Akun Pengguna)
CREATE TABLE UserAccount (
    UserID SERIAL PRIMARY KEY,
    Username VARCHAR(50) NOT NULL UNIQUE,
    PasswordHash VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    CustomerID INT REFERENCES Customer(CustomerID)
);
-- @block

-- @block
-- WishList (Daftar Keinginan)
CREATE TABLE WishList (
    WishListID SERIAL PRIMARY KEY,
    UserID INT REFERENCES UserAccount(UserID),
    BookID INT REFERENCES Book(BookID),
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- @block

-- @block
-- StoreLocation (Lokasi Toko)
CREATE TABLE StoreLocation (
    StoreID SERIAL PRIMARY KEY,
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    Telephone VARCHAR(20)
);
-- @block

-- @block
-- Staff (Staf)
CREATE TABLE Staff (
    StaffID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    StoreID INT REFERENCES StoreLocation(StoreID)
);
-- @block

-- @block
-- Inventory (Inventaris)
CREATE TABLE Inventory (
    InventoryID SERIAL PRIMARY KEY,
    BookID INT REFERENCES Book(BookID),
    StoreID INT REFERENCES StoreLocation(StoreID),
    Quantity INT
);
-- @block

-- @block
-- Category (Kategori)
CREATE TABLE Category (
    CategoryID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Description TEXT
);
-- @block

-- @block
-- Review (Ulasan)
CREATE TABLE Review (
    ReviewID SERIAL PRIMARY KEY,
    BookID INT REFERENCES Book(BookID),
    CustomerID INT REFERENCES Customer(CustomerID),
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    ReviewDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- @block

-- @block
-- CustomerOrder (Pesanan)
CREATE TABLE CustomerOrder (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2)
);
-- @block

-- @block
-- Transaction (Transaksi)
CREATE TABLE Transaction (
    TransactionID SERIAL PRIMARY KEY,
    OrderID INT REFERENCES "Order"(OrderID),
    PaymentMethod VARCHAR(50),
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Amount DECIMAL(10, 2)
);
-- @block

-- @block
-- Supplier (Pemasok)
CREATE TABLE Supplier (
    SupplierID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    ContactInformation TEXT
);
-- @block

-- @block
-- BookFormat (Format Buku)
CREATE TABLE BookFormat (
    FormatID SERIAL PRIMARY KEY,
    BookID INT REFERENCES Book(BookID),
    FormatType VARCHAR(50)
);
-- @block

-- @block
-- Promotion (Promosi)
CREATE TABLE Promotion (
    PromotionID SERIAL PRIMARY KEY,
    Description TEXT,
    DiscountPercentage DECIMAL(5, 2),
    StartDate DATE,
    EndDate DATE
);
-- @block

-- @block
-- Genre (Genre)
CREATE TABLE Genre (
    GenreID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);
-- @block

-- @block
-- ShoppingCart (Keranjang Belanja)
CREATE TABLE ShoppingCart (
    CartID SERIAL PRIMARY KEY,
    UserID INT REFERENCES UserAccount(UserID),
    BookID INT REFERENCES Book(BookID),
    Quantity INT,
    DateAdded TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- @block

-- @block
-- Membership (Keanggotaan)
CREATE TABLE Membership (
    MembershipID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customer(CustomerID),
    MembershipLevel VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);
-- @block