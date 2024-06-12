\COPY (
  EXPLAIN ANALYZE 
  SELECT * 
  FROM Book
) TO '/get_all_books.csv' CSV;
