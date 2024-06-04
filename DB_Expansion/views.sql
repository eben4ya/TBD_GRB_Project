-- @block
-- View untuk melihat daftar buku dan penerbitnya
CREATE VIEW BooksAndPublishers AS
SELECT
    b.BookID,
    b.Title AS BookTitle,
    b.PublicationYear,
    p.Name AS PublisherName,
    p.City AS PublisherCity,
    p.Country AS PublisherCountry
FROM
    Book b
JOIN
    Publisher p ON b.PublisherID = p.PublisherID;
-- @block

-- @block
-- View untuk melihat riwayat pembelian pelanggan
CREATE VIEW CustomerPurchaseHistory AS
SELECT
    c.CustomerID,
    c.Name AS CustomerName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM
    Customer c
JOIN
    CustomerOrder o ON c.CustomerID = o.CustomerID;

-- @block

-- @block
-- View untuk melihat inventaris buku di toko
CREATE VIEW StoreInventory AS
SELECT
    s.StoreID,
    s.Address AS StoreAddress,
    s.City AS StoreCity,
    s.State AS StoreState,
    s.Country AS StoreCountry,
    b.BookID,
    b.Title AS BookTitle,
    i.Quantity
FROM
    StoreLocation s
JOIN
    Inventory i ON s.StoreID = i.StoreID
JOIN
    Book b ON i.BookID = b.BookID;

-- @block