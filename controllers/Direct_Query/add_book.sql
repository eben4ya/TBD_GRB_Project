-- Memulai transaksi
BEGIN;

-- Memeriksa apakah penerbit sudah ada
\COPY (
  EXPLAIN ANALYZE 
  SELECT PublisherID 
  FROM Publisher 
  WHERE Name = 'Eben1' 
  AND City = 'SKA1' 
  AND Country = 'Indow1' 
  AND Telephone = '085601691121' 
  AND YearFounded = 2000
) TO '/add_book/publisher_check.csv' CSV;

-- Menambahkan penerbit baru jika belum ada
\COPY (
  EXPLAIN ANALYZE 
  INSERT INTO Publisher (Name, City, Country, Telephone, YearFounded) 
  VALUES ('Eben1', 'SKA1', 'Indow1', '085601691121', 2000) 
  RETURNING PublisherID
) TO '/add_book/publisher_insert.csv' CSV;

-- Menambahkan buku baru
\COPY (
  EXPLAIN ANALYZE 
  INSERT INTO Book (Title, PublicationYear, Pages, PublisherID) 
  VALUES ('Learn Javascript', 2000, 350, 1) 
  RETURNING *
) TO '/add_book/book_insert.csv' CSV;

-- Menyimpan transaksi
COMMIT;
