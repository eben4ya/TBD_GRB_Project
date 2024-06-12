-- Memulai transaksi
BEGIN;

-- Memeriksa apakah buku ada
\COPY (
  EXPLAIN ANALYZE 
  SELECT PublisherID 
  FROM Book 
  WHERE BookID = 1
) TO '/update_book/book_check.csv' CSV;

-- Memperbarui data penerbit
\COPY (
  EXPLAIN ANALYZE 
  UPDATE Publisher 
  SET Name = 'Eben11', City = 'SKA11', Country = 'Indow11', Telephone = '085601691121-1', YearFounded = 2021 
  WHERE PublisherID = 1 
  RETURNING *
) TO '/update_book/publisher_update.csv' CSV;

-- Memperbarui data buku
\COPY (
  EXPLAIN ANALYZE 
  UPDATE Book 
  SET Title = 'Learn ReactJs', PublicationYear = 2011, Pages = 400, PublisherID = 1 
  WHERE BookID = 1 
  RETURNING *
) TO '/update_book/book_update.csv' CSV;

-- Menyimpan transaksi
COMMIT;
