-- Skenario ketika ada pesanan baru, stok buku harus diperbarui. Jika stok buku tidak mencukupi, transaksi harus dibatalkan

BEGIN;

-- Savepoint untuk mengecek stok
SAVEPOINT check_stock;

-- Contoh pesanan baru
DO $$
DECLARE
    v_quantity INT;
BEGIN
    -- Cek stok buku
    SELECT Quantity INTO v_quantity
    FROM Inventory
    WHERE BookID = 1 AND StoreID = 1;

    -- Jika stok cukup, kurangi stok
    IF v_quantity >= 2 THEN
        UPDATE Inventory
        SET Quantity = Quantity - 2
        WHERE BookID = 1 AND StoreID = 1;

        -- Simpan savepoint setelah update stok
        SAVEPOINT after_stock_update;

        -- Masukkan pesanan baru
        INSERT INTO CustomerOrder (CustomerID, OrderDate, TotalAmount)
        VALUES (1, CURRENT_TIMESTAMP, 50000);

        -- Simpan savepoint setelah memasukkan pesanan
        SAVEPOINT after_order_insert;

        -- Masukkan detail transaksi
        INSERT INTO Transaction (OrderID, PaymentMethod, TransactionDate, Amount)
        VALUES (currval('CustomerOrder_OrderID_seq'), 'Credit Card', CURRENT_TIMESTAMP, 50000);

    ELSE
        -- Jika stok tidak cukup, rollback ke savepoint check_stock
        ROLLBACK TO check_stock;
        RAISE NOTICE 'Stok tidak mencukupi';
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        -- Jika terjadi kesalahan, rollback ke savepoint after_stock_update
        ROLLBACK TO after_stock_update;
        RAISE NOTICE 'Terjadi kesalahan, rollback ke after_stock_update';
END $$;

-- Commit transaksi jika tidak ada kesalahan
COMMIT;
