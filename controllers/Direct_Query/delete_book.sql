\COPY (
  EXPLAIN ANALYZE 
  DELETE FROM Book 
  WHERE BookID = 1 
  RETURNING *
) TO '/delete_book.csv' CSV;
