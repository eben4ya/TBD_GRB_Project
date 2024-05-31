-- @block
--	Publisher (Penerbit)
INSERT INTO Publisher (Name, City, Country, Telephone, YearFounded) VALUES
('Gramedia', 'Yogyakarta', 'Indonesia', '0274-123456', 1970),
('Mizan', 'Yogyakarta', 'Indonesia', '0274-234567', 1983),
('Erlangga', 'Yogyakarta', 'Indonesia', '0274-345678', 1952),
('Kanisius', 'Yogyakarta', 'Indonesia', '0274-456789', 1965),
('Andi', 'Yogyakarta', 'Indonesia', '0274-567890', 1980),
('Bentang Pustaka', 'Yogyakarta', 'Indonesia', '0274-678901', 1995),
('LKiS', 'Yogyakarta', 'Indonesia', '0274-789012', 1990),
('Diva Press', 'Yogyakarta', 'Indonesia', '0274-890123', 2000),
('Galang Press', 'Yogyakarta', 'Indonesia', '0274-901234', 1998),
('Narasi', 'Yogyakarta', 'Indonesia', '0274-012345', 2010),
('Qanita', 'Yogyakarta', 'Indonesia', '0274-123457', 2005),
('Pustaka Pelajar', 'Yogyakarta', 'Indonesia', '0274-234568', 1993),
('Adiwacana', 'Yogyakarta', 'Indonesia', '0274-345679', 1987),
('Ruang Kata', 'Yogyakarta', 'Indonesia', '0274-456790', 2012),
('Buana Pustaka', 'Yogyakarta', 'Indonesia', '0274-567891', 2008),
('Kata Kita', 'Yogyakarta', 'Indonesia', '0274-678902', 2015),
('Phoenix Publisher', 'Yogyakarta', 'Indonesia', '0274-789013', 2011),
('Media Pressindo', 'Yogyakarta', 'Indonesia', '0274-890124', 1992),
('Gadjah Mada University Press', 'Yogyakarta', 'Indonesia', '0274-901235', 1960),
('Pustaka Sinar Harapan', 'Yogyakarta', 'Indonesia', '0274-012346', 1984);
-- @block

-- @block
--	Book (Buku)
INSERT INTO Book (Title, PublicationYear, Pages, PublisherID) VALUES
('Sejarah Indonesia', 2000, 320, 1),
('Matematika Dasar', 2005, 250, 2),
('Fisika Modern', 2010, 400, 3),
('Kimia Organik', 2015, 300, 4),
('Biologi Umum', 2020, 280, 5),
('Pemrograman Komputer', 2018, 350, 6),
('Ekonomi Mikro', 2012, 290, 7),
('Sosiologi Lanjutan', 2016, 310, 8),
('Psikologi Anak', 2019, 270, 9),
('Statistika Terapan', 2011, 330, 10),
('Bahasa Indonesia', 2013, 260, 11),
('Bahasa Inggris', 2017, 340, 12),
('Hukum Pidana', 2014, 380, 13),
('Antropologi Sosial', 2009, 300, 14),
('Filsafat Barat', 2021, 360, 15),
('Sejarah Dunia', 2008, 290, 16),
('Teknologi Informasi', 2022, 410, 17),
('Manajemen Keuangan', 2006, 320, 18),
('Pendidikan Karakter', 2007, 280, 19),
('Geografi Indonesia', 2015, 270, 20);
-- @block

-- @block
--	Author (Penulis)
INSERT INTO Author (Name, YearBorn, YearDeceased) VALUES
('Budi Santoso', 1965, NULL),
('Siti Aminah', 1970, NULL),
('Joko Widodo', 1975, NULL),
('Rina Wahyuni', 1980, NULL),
('Agus Salim', 1950, 2015),
('Ratna Sari Dewi', 1985, NULL),
('Adi Nugroho', 1990, NULL),
('Fitri Handayani', 1972, NULL),
('Eko Susanto', 1968, NULL),
('Lina Marlina', 1978, NULL),
('Dedi Kurniawan', 1982, NULL),
('Sinta Puspitasari', 1983, NULL),
('Rudi Hartono', 1971, NULL),
('Winda Sari', 1974, NULL),
('Indra Permana', 1987, NULL),
('Desi Ratnasari', 1989, NULL),
('Arif Rahman', 1991, NULL),
('Nina Agustina', 1976, NULL),
('Bambang Wibowo', 1969, NULL),
('Yusuf Maulana', 1981, NULL);
-- @block

-- @block
--	Customer (Pelanggan)
INSERT INTO Customer (Name, Street, City, State, Country, Telephone) VALUES
('Ahmad Fauzi', 'Jl. Malioboro No. 10', 'Yogyakarta', 'DIY', 'Indonesia', '0274-111111'),
('Siti Nurhaliza', 'Jl. Kaliurang Km. 5', 'Yogyakarta', 'DIY', 'Indonesia', '0274-222222'),
('Bambang Sutejo', 'Jl. Godean No. 15', 'Yogyakarta', 'DIY', 'Indonesia', '0274-333333'),
('Rina Kusuma', 'Jl. Magelang Km. 7', 'Yogyakarta', 'DIY', 'Indonesia', '0274-444444'),
('Agus Prasetyo', 'Jl. Parangtritis No. 25', 'Yogyakarta', 'DIY', 'Indonesia', '0274-555555'),
('Fitri Wahyuni', 'Jl. Adisutjipto No. 8', 'Yogyakarta', 'DIY', 'Indonesia', '0274-666666'),
('Eko Wijaya', 'Jl. Laksda Adisucipto Km. 6', 'Yogyakarta', 'DIY', 'Indonesia', '0274-777777'),
('Lina Marlina', 'Jl. Kusumanegara No. 18', 'Yogyakarta', 'DIY', 'Indonesia', '0274-888888'),
('Rudi Hartanto', 'Jl. Suryodiningratan No. 12', 'Yogyakarta', 'DIY', 'Indonesia', '0274-999999'),
('Sri Wahyuni', 'Jl. Monjali No. 20', 'Yogyakarta', 'DIY', 'Indonesia', '0274-101010'),
('Indra Kurniawan', 'Jl. Solo Km. 10', 'Yogyakarta', 'DIY', 'Indonesia', '0274-121212'),
('Dewi Sartika', 'Jl. Wonosari Km. 5', 'Yogyakarta', 'DIY', 'Indonesia', '0274-131313'),
('Yusuf Maulana', 'Jl. Bantul No. 30', 'Yogyakarta', 'DIY', 'Indonesia', '0274-141414'),
('Nina Agustina', 'Jl. Timoho No. 14', 'Yogyakarta', 'DIY', 'Indonesia', '0274-151515'),
('Desi Ratnasari', 'Jl. Kenari No. 5', 'Yogyakarta', 'DIY', 'Indonesia', '0274-161616'),
('Budi Setiawan', 'Jl. Kaliurang Km. 7', 'Yogyakarta', 'DIY', 'Indonesia', '0274-171717'),
('Agung Nugroho', 'Jl. Solo Km. 2', 'Yogyakarta', 'DIY', 'Indonesia', '0274-181818'),
('Siti Khadijah', 'Jl. Parangtritis Km. 3', 'Yogyakarta', 'DIY', 'Indonesia', '0274-191919'),
('Fajar Prasetyo', 'Jl. Magelang Km. 10', 'Yogyakarta', 'DIY', 'Indonesia', '0274-202020'),
('Lilis Suryani', 'Jl. Bantul Km. 5', 'Yogyakarta', 'DIY', 'Indonesia', '0274-212121');
-- @block


-- @block
--	UserAccount (Akun Penna)
INSERT INTO UserAccount (Username, PasswordHash, Email, CustomerID) VALUES
('ahmad_fauzi', 'hash_password_1', 'ahmad_fauzi@example.com', 1),
('siti_nurhaliza', 'hash_password_2', 'siti_nurhaliza@example.com', 2),
('bambang_sutejo', 'hash_password_3', 'bambang_sutejo@example.com', 3),
('rina_kusuma', 'hash_password_4', 'rina_kusuma@example.com', 4),
('agus_prasetyo', 'hash_password_5', 'agus_prasetyo@example.com', 5),
('fitri_wahyuni', 'hash_password_6', 'fitri_wahyuni@example.com', 6),
('eko_wijaya', 'hash_password_7', 'eko_wijaya@example.com', 7),
('lina_marlina', 'hash_password_8', 'lina_marlina@example.com', 8),
('rudi_hartanto', 'hash_password_9', 'rudi_hartanto@example.com', 9),
('sri_wahyuni', 'hash_password_10', 'sri_wahyuni@example.com', 10),
('indra_kurniawan', 'hash_password_11', 'indra_kurniawan@example.com', 11),
('dewi_sartika', 'hash_password_12', 'dewi_sartika@example.com', 12),
('yusuf_maulana', 'hash_password_13', 'yusuf_maulana@example.com', 13),
('nina_agustina', 'hash_password_14', 'nina_agustina@example.com', 14),
('desi_ratnasari', 'hash_password_15', 'desi_ratnasari@example.com', 15),
('budi_setiawan', 'hash_password_16', 'budi_setiawan@example.com', 16),
('agung_nugroho', 'hash_password_17', 'agung_nugroho@example.com', 17),
('siti_khadijah', 'hash_password_18', 'siti_khadijah@example.com', 18),
('fajar_prasetyo', 'hash_password_19', 'fajar_prasetyo@example.com', 19),
('lilis_suryani', 'hash_password_20', 'lilis_suryani@example.com', 20);
-- @block

-- @block
--	WishList (Daftar Keinan)
INSERT INTO WishList (UserID, BookID, DateAdded) VALUES
(1, 1, CURRENT_TIMESTAMP),
(2, 2, CURRENT_TIMESTAMP),
(3, 3, CURRENT_TIMESTAMP),
(4, 4, CURRENT_TIMESTAMP),
(5, 5, CURRENT_TIMESTAMP),
(6, 6, CURRENT_TIMESTAMP),
(7, 7, CURRENT_TIMESTAMP),
(8, 8, CURRENT_TIMESTAMP),
(9, 9, CURRENT_TIMESTAMP),
(10, 10, CURRENT_TIMESTAMP),
(11, 11, CURRENT_TIMESTAMP),
(12, 12, CURRENT_TIMESTAMP),
(13, 13, CURRENT_TIMESTAMP),
(14, 14, CURRENT_TIMESTAMP),
(15, 15, CURRENT_TIMESTAMP),
(16, 16, CURRENT_TIMESTAMP),
(17, 17, CURRENT_TIMESTAMP),
(18, 18, CURRENT_TIMESTAMP),
(19, 19, CURRENT_TIMESTAMP),
(20, 20, CURRENT_TIMESTAMP);
-- @block

-- @block
--	StoreLocation (Lokasiko)
INSERT INTO StoreLocation (Address, City, State, Country, Telephone) VALUES
('Jl. Malioboro No. 1', 'Yogyakarta', 'DIY', 'Indonesia', '0274-111111'),
('Jl. Kaliurang Km. 10', 'Yogyakarta', 'DIY', 'Indonesia', '0274-222222'),
('Jl. Godean No. 20', 'Yogyakarta', 'DIY', 'Indonesia', '0274-333333'),
('Jl. Magelang Km. 7', 'Yogyakarta', 'DIY', 'Indonesia', '0274-444444'),
('Jl. Parangtritis No. 50', 'Yogyakarta', 'DIY', 'Indonesia', '0274-555555'),
('Jl. Adisutjipto No. 9', 'Yogyakarta', 'DIY', 'Indonesia', '0274-666666'),
('Jl. Laksda Adisucipto Km. 7', 'Yogyakarta', 'DIY', 'Indonesia', '0274-777777'),
('Jl. Kusumanegara No. 25', 'Yogyakarta', 'DIY', 'Indonesia', '0274-888888'),
('Jl. Suryodiningratan No. 15', 'Yogyakarta', 'DIY', 'Indonesia', '0274-999999'),
('Jl. Monjali No. 21', 'Yogyakarta', 'DIY', 'Indonesia', '0274-101010'),
('Jl. Solo Km. 15', 'Yogyakarta', 'DIY', 'Indonesia', '0274-121212'),
('Jl. Wonosari Km. 8', 'Yogyakarta', 'DIY', 'Indonesia', '0274-131313'),
('Jl. Bantul No. 35', 'Yogyakarta', 'DIY', 'Indonesia', '0274-141414'),
('Jl. Timoho No. 18', 'Yogyakarta', 'DIY', 'Indonesia', '0274-151515'),
('Jl. Kenari No. 7', 'Yogyakarta', 'DIY', 'Indonesia', '0274-161616'),
('Jl. Kaliurang Km. 12', 'Yogyakarta', 'DIY', 'Indonesia', '0274-171717'),
('Jl. Solo Km. 3', 'Yogyakarta', 'DIY', 'Indonesia', '0274-181818'),
('Jl. Parangtritis Km. 4', 'Yogyakarta', 'DIY', 'Indonesia', '0274-191919'),
('Jl. Magelang Km. 12', 'Yogyakarta', 'DIY', 'Indonesia', '0274-202020'),
('Jl. Bantul Km. 6', 'Yogyakarta', 'DIY', 'Indonesia', '0274-212121');
-- @block

-- @block
--	Staff (Staf)
INSERT INTO Staff (Name, Position, StoreID) VALUES
('Agus Santoso', 'Manager', 1),
('Rina Sari', 'Kasir', 2),
('Budi Utomo', 'Staff', 3),
('Siti Aminah', 'Kasir', 4),
('Eko Wibowo', 'Staff', 5),
('Fitri Handayani', 'Manager', 6),
('Joko Susilo', 'Staff', 7),
('Dewi Lestari', 'Kasir', 8),
('Agus Kurniawan', 'Staff', 9),
('Sri Wahyuni', 'Manager', 10),
('Indra Wijaya', 'Kasir', 11),
('Lina Marlina', 'Staff', 12),
('Bambang Sutrisno', 'Kasir', 13),
('Winda Sari', 'Manager', 14),
('Agung Prasetyo', 'Staff', 15),
('Siti Khadijah', 'Kasir', 16),
('Yusuf Maulana', 'Staff', 17),
('Fajar Prasetyo', 'Manager', 18),
('Nina Agustina', 'Staff', 19),
('Desi Ratnasari', 'Kasir', 20);
-- @block

-- @block
--	Inventory (Inventaris)
INSERT INTO Inventory (BookID, StoreID, Quantity) VALUES
(1, 1, 50),
(2, 2, 30),
(3, 3, 20),
(4, 4, 40),
(5, 5, 15),
(6, 6, 25),
(7, 7, 10),
(8, 8, 35),
(9, 9, 45),
(10, 10, 60),
(11, 11, 22),
(12, 12, 33),
(13, 13, 44),
(14, 14, 18),
(15, 15, 27),
(16, 16, 37),
(17, 17, 29),
(18, 18, 39),
(19, 19, 49),
(20, 20, 59);
-- @block

-- @block
--	Category (Kategori)
INSERT INTO Category (Name, Description) VALUES
('Fiksi', 'Buku-buku dengan cerita fiksi'),
('Non-Fiksi', 'Buku-buku dengan konten non-fiksi'),
('Teknologi', 'Buku-buku tentang teknologi dan komputer'),
('Pendidikan', 'Buku-buku pendidikan dan referensi'),
('Kesehatan', 'Buku-buku tentang kesehatan dan kebugaran'),
('Ekonomi', 'Buku-buku tentang ekonomi dan bisnis'),
('Sastra', 'Buku-buku sastra dan puisi'),
('Sejarah', 'Buku-buku tentang sejarah'),
('Agama', 'Buku-buku tentang agama dan spiritualitas'),
('Psikologi', 'Buku-buku tentang psikologi'),
('Anak-Anak', 'Buku-buku untuk anak-anak'),
('Komik', 'Buku-buku komik dan manga'),
('Biografi', 'Buku-buku biografi dan otobiografi'),
('Sains', 'Buku-buku tentang ilmu pengetahuan'),
('Hukum', 'Buku-buku tentang hukum dan peraturan'),
('Politik', 'Buku-buku tentang politik dan pemerintahan'),
('Filsafat', 'Buku-buku tentang filsafat'),
('Sosial', 'Buku-buku tentang ilmu sosial'),
('Budaya', 'Buku-buku tentang budaya dan antropologi'),
('Pariwisata', 'Buku-buku tentang pariwisata dan perjalanan');
-- @block

-- @block
--	Review (Ulasan)
INSERT INTO Review (BookID, CustomerID, Rating, Comment, ReviewDate) VALUES
(1, 1, 5, 'Buku yang sangat informatif!', CURRENT_TIMESTAMP),
(2, 2, 4, 'Cukup bagus, tetapi kurang mendalam.', CURRENT_TIMESTAMP),
(3, 3, 3, 'Biasa saja, tidak terlalu menarik.', CURRENT_TIMESTAMP),
(4, 4, 5, 'Sangat membantu dalam belajar.', CURRENT_TIMESTAMP),
(5, 5, 4, 'Penjelasannya cukup jelas.', CURRENT_TIMESTAMP),
(6, 6, 5, 'Saya sangat suka buku ini.', CURRENT_TIMESTAMP),
(7, 7, 3, 'Tidak sesuai dengan ekspektasi saya.', CURRENT_TIMESTAMP),
(8, 8, 4, 'Cukup bagus untuk referensi.', CURRENT_TIMESTAMP),
(9, 9, 5, 'Sangat menarik dan informatif.', CURRENT_TIMESTAMP),
(10, 10, 4, 'Penulisannya cukup baik.', CURRENT_TIMESTAMP),
(11, 11, 3, 'Biasa saja, butuh perbaikan.', CURRENT_TIMESTAMP),
(12, 12, 5, 'Sangat berguna untuk belajar.', CURRENT_TIMESTAMP),
(13, 13, 4, 'Cukup memuaskan.', CURRENT_TIMESTAMP),
(14, 14, 3, 'Tidak terlalu bagus.', CURRENT_TIMESTAMP),
(15, 15, 5, 'Sangat baik dan mendalam.', CURRENT_TIMESTAMP),
(16, 16, 4, 'Menarik untuk dibaca.', CURRENT_TIMESTAMP),
(17, 17, 3, 'Kurang informatif.', CURRENT_TIMESTAMP),
(18, 18, 5, 'Sangat direkomendasikan!', CURRENT_TIMESTAMP),
(19, 19, 4, 'Buku yang bagus.', CURRENT_TIMESTAMP),
(20, 20, 5, 'Sangat membantu dan mendidik.', CURRENT_TIMESTAMP);
-- @block

-- @block
--	Order (Pesanan)
INSERT INTO CustomerOrder (CustomerID, OrderDate, TotalAmount) VALUES
(1, CURRENT_TIMESTAMP, 150000),
(2, CURRENT_TIMESTAMP, 200000),
(3, CURRENT_TIMESTAMP, 250000),
(4, CURRENT_TIMESTAMP, 100000),
(5, CURRENT_TIMESTAMP, 175000),
(6, CURRENT_TIMESTAMP, 225000),
(7, CURRENT_TIMESTAMP, 300000),
(8, CURRENT_TIMESTAMP, 125000),
(9, CURRENT_TIMESTAMP, 275000),
(10, CURRENT_TIMESTAMP, 350000),
(11, CURRENT_TIMESTAMP, 400000),
(12, CURRENT_TIMESTAMP, 450000),
(13, CURRENT_TIMESTAMP, 500000),
(14, CURRENT_TIMESTAMP, 550000),
(15, CURRENT_TIMESTAMP, 600000),
(16, CURRENT_TIMESTAMP, 650000),
(17, CURRENT_TIMESTAMP, 700000),
(18, CURRENT_TIMESTAMP, 750000),
(19, CURRENT_TIMESTAMP, 800000),
(20, CURRENT_TIMESTAMP, 850000);
-- @block

-- @block
-- Transaction (Transaksi)
INSERT INTO Transaction (OrderID, PaymentMethod, TransactionDate, Amount) VALUES
(1, 'Credit Card', CURRENT_TIMESTAMP, 150000),
(2, 'Debit Card', CURRENT_TIMESTAMP, 200000),
(3, 'Cash', CURRENT_TIMESTAMP, 250000),
(4, 'Credit Card', CURRENT_TIMESTAMP, 100000),
(5, 'Debit Card', CURRENT_TIMESTAMP, 175000),
(6, 'Cash', CURRENT_TIMESTAMP, 225000),
(7, 'Credit Card', CURRENT_TIMESTAMP, 300000),
(8, 'Debit Card', CURRENT_TIMESTAMP, 125000),
(9, 'Cash', CURRENT_TIMESTAMP, 275000),
(10, 'Credit Card', CURRENT_TIMESTAMP, 350000),
(11, 'Debit Card', CURRENT_TIMESTAMP, 400000),
(12, 'Cash', CURRENT_TIMESTAMP, 450000),
(13, 'Credit Card', CURRENT_TIMESTAMP, 500000),
(14, 'Debit Card', CURRENT_TIMESTAMP, 550000),
(15, 'Cash', CURRENT_TIMESTAMP, 600000),
(16, 'Credit Card', CURRENT_TIMESTAMP, 650000),
(17, 'Debit Card', CURRENT_TIMESTAMP, 700000),
(18, 'Cash', CURRENT_TIMESTAMP, 750000),
(19, 'Credit Card', CURRENT_TIMESTAMP, 800000),
(20, 'Debit Card', CURRENT_TIMESTAMP, 850000);
-- @block

-- @block
--	Supplier (Pemasok)
INSERT INTO Supplier (Name, ContactInformation) VALUES
('PT. Gramedia Asri Media', 'Jl. Magelang No. 8, Yogyakarta, Telp: 0274-123456'),
('PT. Mizan Pustaka', 'Jl. Solo Km. 5, Yogyakarta, Telp: 0274-234567'),
('PT. Penerbit Erlangga', 'Jl. Godean No. 12, Yogyakarta, Telp: 0274-345678'),
('PT. Kanisius', 'Jl. Kaliurang Km. 7, Yogyakarta, Telp: 0274-456789'),
('PT. Andi Offset', 'Jl. Parangtritis No. 9, Yogyakarta, Telp: 0274-567890'),
('Bentang Pustaka', 'Jl. Adisutjipto No. 10, Yogyakarta, Telp: 0274-678901'),
('LKiS', 'Jl. Bantul No. 14, Yogyakarta, Telp: 0274-789012'),
('Diva Press', 'Jl. Suryodiningratan No. 16, Yogyakarta, Telp: 0274-890123'),
('Galang Press', 'Jl. Timoho No. 18, Yogyakarta, Telp: 0274-901234'),
('Narasi', 'Jl. Kenari No. 20, Yogyakarta, Telp: 0274-012345'),
('Qanita', 'Jl. Monjali No. 5, Yogyakarta, Telp: 0274-123457'),
('Pustaka Pelajar', 'Jl. Wonosari Km. 7, Yogyakarta, Telp: 0274-234568'),
('Adiwacana', 'Jl. Solo Km. 2, Yogyakarta, Telp: 0274-345679'),
('Ruang Kata', 'Jl. Kusumanegara No. 21, Yogyakarta, Telp: 0274-456790'),
('Buana Pustaka', 'Jl. Magelang Km. 6, Yogyakarta, Telp: 0274-567891'),
('Kata Kita', 'Jl. Solo Km. 8, Yogyakarta, Telp: 0274-678902'),
('Phoenix Publisher', 'Jl. Kaliurang Km. 9, Yogyakarta, Telp: 0274-789013'),
('Media Pressindo', 'Jl. Godean No. 4, Yogyakarta, Telp: 0274-890124'),
('Gadjah Mada University Press', 'Jl. UGM No. 1, Yogyakarta, Telp: 0274-901235'),
('Pustaka Sinar Harapan', 'Jl. Bantul Km. 2, Yogyakarta, Telp: 0274-012346');
-- @block

-- @block
--	BookFormat (Format Buku
INSERT INTO BookFormat (BookID, FormatType) VALUES
(1, 'Hardcover'),
(2, 'Paperback'),
(3, 'E-Book'),
(4, 'Hardcover'),
(5, 'Paperback'),
(6, 'E-Book'),
(7, 'Hardcover'),
(8, 'Paperback'),
(9, 'E-Book'),
(10, 'Hardcover'),
(11, 'Paperback'),
(12, 'E-Book'),
(13, 'Hardcover'),
(14, 'Paperback'),
(15, 'E-Book'),
(16, 'Hardcover'),
(17, 'Paperback'),
(18, 'E-Book'),
(19, 'Hardcover'),
(20, 'Paperback');
-- @block

-- @block
--	Promotion (Promosi)
INSERT INTO Promotion (Description, DiscountPercentage, StartDate, EndDate) VALUES
('Diskon Akhir Tahun', 10.00, '2024-12-01', '2024-12-31'),
('Promo Awal Tahun', 15.00, '2024-01-01', '2024-01-15'),
('Diskon Hari Kemerdekaan', 20.00, '2024-08-17', '2024-08-17'),
('Promo Hari Buku', 25.00, '2024-04-23', '2024-04-23'),
('Diskon Musim Liburan', 30.00, '2024-06-01', '2024-06-30'),
('Promo Hari Pendidikan Nasional', 35.00, '2024-05-02', '2024-05-02'),
('Diskon Akhir Pekan', 5.00, '2024-11-01', '2024-11-30'),
('Promo Spesial Ramadhan', 40.00, '2024-04-01', '2024-04-30'),
('Diskon Musim Panas', 10.00, '2024-07-01', '2024-07-31'),
('Promo Hari Ibu', 15.00, '2024-12-22', '2024-12-22'),
('Diskon Musim Gugur', 20.00, '2024-09-01', '2024-09-30'),
('Promo Hari Ayah', 25.00, '2024-11-12', '2024-11-12'),
('Diskon Liburan Sekolah', 30.00, '2024-06-15', '2024-07-15'),
('Promo Tahun Baru Islam', 35.00, '2024-07-30', '2024-07-30'),
('Diskon Ulang Tahun Toko', 5.00, '2024-03-01', '2024-03-31'),
('Promo Natal', 40.00, '2024-12-25', '2024-12-25'),
('Diskon Valentine', 10.00, '2024-02-14', '2024-02-14'),
('Promo Imlek', 15.00, '2024-02-10', '2024-02-10'),
('Diskon Hari Pahlawan', 20.00, '2024-11-10', '2024-11-10'),
('Promo Tahun Baru', 25.00, '2024-01-01', '2024-01-01');
-- @block

-- @block
--	Genre 
INSERT INTO Genre (Name) VALUES
('Fiksi'),
('Non-Fiksi'),
('Teknologi'),
('Pendidikan'),
('Kesehatan'),
('Ekonomi'),
('Sastra'),
('Sejarah'),
('Agama'),
('Psikologi'),
('Anak-Anak'),
('Komik'),
('Biografi'),
('Sains'),
('Hukum'),
('Politik'),
('Filsafat'),
('Sosial'),
('Budaya'),
('Pariwisata');
-- @block

-- @block
--	ShoppingCart (KeranjaBelanja)
INSERT INTO ShoppingCart (UserID, BookID, Quantity, DateAdded) VALUES
(1, 1, 2, CURRENT_TIMESTAMP),
(2, 2, 1, CURRENT_TIMESTAMP),
(3, 3, 4, CURRENT_TIMESTAMP),
(4, 4, 2, CURRENT_TIMESTAMP),
(5, 5, 3, CURRENT_TIMESTAMP),
(6, 6, 1, CURRENT_TIMESTAMP),
(7, 7, 2, CURRENT_TIMESTAMP),
(8, 8, 1, CURRENT_TIMESTAMP),
(9, 9, 3, CURRENT_TIMESTAMP),
(10, 10, 4, CURRENT_TIMESTAMP),
(11, 11, 1, CURRENT_TIMESTAMP),
(12, 12, 2, CURRENT_TIMESTAMP),
(13, 13, 1, CURRENT_TIMESTAMP),
(14, 14, 3, CURRENT_TIMESTAMP),
(15, 15, 2, CURRENT_TIMESTAMP),
(16, 16, 1, CURRENT_TIMESTAMP),
(17, 17, 2, CURRENT_TIMESTAMP),
(18, 18, 1, CURRENT_TIMESTAMP),
(19, 19, 3, CURRENT_TIMESTAMP),
(20, 20, 4, CURRENT_TIMESTAMP);
-- @block

-- @block
--	Membership (Keanggotaan)
INSERT INTO Membership (CustomerID, MembershipLevel, StartDate, EndDate) VALUES
(1, 'Gold', '2024-01-01', '2024-12-31'),
(2, 'Silver', '2024-01-01', '2024-12-31'),
(3, 'Bronze', '2024-01-01', '2024-12-31'),
(4, 'Gold', '2024-01-01', '2024-12-31'),
(5, 'Silver', '2024-01-01', '2024-12-31'),
(6, 'Bronze', '2024-01-01', '2024-12-31'),
(7, 'Gold', '2024-01-01', '2024-12-31'),
(8, 'Silver', '2024-01-01', '2024-12-31'),
(9, 'Bronze', '2024-01-01', '2024-12-31'),
(10, 'Gold', '2024-01-01', '2024-12-31'),
(11, 'Silver', '2024-01-01', '2024-12-31'),
(12, 'Bronze', '2024-01-01', '2024-12-31'),
(13, 'Gold', '2024-01-01', '2024-12-31'),
(14, 'Silver', '2024-01-01', '2024-12-31'),
(15, 'Bronze', '2024-01-01', '2024-12-31'),
(16, 'Gold', '2024-01-01', '2024-12-31'),
(17, 'Silver', '2024-01-01', '2024-12-31'),
(18, 'Bronze', '2024-01-01', '2024-12-31'),
(19, 'Gold', '2024-01-01', '2024-12-31'),
(20, 'Silver', '2024-01-01', '2024-12-31');
-- @block

