-- Memulai transaksi
BEGIN;

-- Memeriksa apakah buku ada
EXPLAIN ANALYZE 
SELECT PublisherID 
FROM Book 
WHERE BookID = 34;

-- Memperbarui data penerbit
EXPLAIN ANALYZE 
UPDATE Publisher 
SET Name = 'Eben11', City = 'SKA11', Country = 'Indow11', Telephone = '085601691121-1', YearFounded = 2021 
WHERE PublisherID = 34;

-- Memperbarui data buku
EXPLAIN ANALYZE 
UPDATE Book 
SET Title = 'Learn ReactJs', PublicationYear = 2011, Pages = 400, PublisherID = 34 
WHERE BookID = 34;

-- Menyimpan transaksi
COMMIT;
