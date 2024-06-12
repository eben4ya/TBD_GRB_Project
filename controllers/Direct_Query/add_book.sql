
-- Memulai transaksi
BEGIN;

-- Mengalihkan output ke file
-- \o /add_book/publisher_check.csv

-- Memeriksa apakah penerbit sudah ada
EXPLAIN ANALYZE 
SELECT PublisherID 
FROM Publisher 
WHERE Name = 'Eben2' 
AND City = 'SKA2' 
AND Country = 'Indow2' 
AND Telephone = '085601691121' 
AND YearFounded = 2000;

-- Mengalihkan output ke file lain
-- \o /add_book/publisher_insert.csv

-- Menambahkan penerbit baru jika belum ada
EXPLAIN ANALYZE 
INSERT INTO Publisher (Name, City, Country, Telephone, YearFounded) 
VALUES ('Eben2', 'SKA2', 'Indow2', '085601691121', 2000) 
RETURNING PublisherID;

-- Mengalihkan output ke file lain
-- \o /add_book/book_insert.csv

-- Menambahkan buku baru
EXPLAIN ANALYZE 
INSERT INTO Book (Title, PublicationYear, Pages) 
VALUES ('Learn Javascript 2', 2000, 350) 
RETURNING *;

-- Menonaktifkan pengalihan output
-- \o

-- Menyimpan transaksi
COMMIT;

