INSERT INTO kategori (category_name) VALUES
('Fiksi'),
('Sains'),
('Sejarah'),
('Teknologi'),
('Biografi'),
('Filsafat'),
('Komik'),
('Agama'),
('Seni & Desain'),
('Psikologi');

INSERT INTO buku (year, book_title, category_id) VALUES
('2020-01-01', 'Laskar Pelangi', 1),
('2019-03-15', 'Teori Relativitas Singkat', 2),
('2018-08-17', 'Sejarah Nusantara', 3),
('2021-11-10', 'Pemrograman SQL Dasar', 4),
('2017-05-20', 'Biografi Bung Karno', 5),
('2022-02-14', 'Filosofi Teras', 6),
('2020-09-01', 'Petualangan Tintin', 7),
('2016-04-10', 'Tafsir Kebajikan', 8),
('2023-01-05', 'Dasar Desain Grafis', 9),
('2021-07-22', 'Psikologi Populer', 10);

INSERT INTO rak_buku (category_id, book_id, category_name, book_title) VALUES
(1, 1, 'Fiksi', 'Laskar Pelangi'),
(2, 2, 'Sains', 'Teori Relativitas Singkat'),
(3, 3, 'Sejarah', 'Sejarah Nusantara'),
(4, 4, 'Teknologi', 'Pemrograman SQL Dasar'),
(5, 5, 'Biografi', 'Biografi Bung Karno'),
(6, 6, 'Filsafat', 'Filosofi Teras'),
(7, 7, 'Komik', 'Petualangan Tintin'),
(8, 8, 'Agama', 'Tafsir Kebajikan'),
(9, 9, 'Seni & Desain', 'Dasar Desain Grafis'),
(10, 10, 'Psikologi', 'Psikologi Populer');

INSERT INTO peminjaman (book_id, book_title) VALUES
(1, 'Laskar Pelangi'),
(2, 'Teori Relativitas Singkat'),
(3, 'Sejarah Nusantara'),
(4, 'Pemrograman SQL Dasar'),
(5, 'Biografi Bung Karno'),
(6, 'Filosofi Teras'),
(7, 'Petualangan Tintin'),
(8, 'Tafsir Kebajikan'),
(9, 'Dasar Desain Grafis'),
(10, 'Psikologi Populer');

INSERT INTO petugas (petugas_name, book_id, peminjaman_id) VALUES
('Budi Santoso', 1, 1),
('Siti Aminah', 2, 2),
('Rian Hidayat', 3, 3),
('Dewi Lestari', 4, 4),
('Andi Pratama', 5, 5),
('Eko Prasetyo', 6, 6),
('Nina Kartika', 7, 7),
('Rudi Hermawan', 8, 8),
('Maya Sari', 9, 9),
('Fajar Nugraha', 10, 10);

-- TABLE petugas;
TABLE kategori;
-- TABLE peminjaman;
-- TABLE rak_buku;
-- TABLE buku;