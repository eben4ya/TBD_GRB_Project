\COPY (
  EXPLAIN ANALYZE 
  SELECT * 
  FROM Book 
  WHERE BookID = 1
) TO '/get_book_id.csv' CSV;
