CREATE TABLE kategori (
  category_name VARCHAR(50),
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE buku (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  year DATE,
  book_title VARCHAR(255),
  category_id INT REFERENCES kategori(id)
);

CREATE TABLE rak_buku (
  category_id INT REFERENCES kategori(id),
  book_id INT REFERENCES buku(id),
  category_name VARCHAR(50),
  book_title VARCHAR(255)
);

CREATE TABLE peminjaman (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  book_id INT REFERENCES buku(id),
  book_title VARCHAR(50)
);

CREATE TABLE petugas (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  petugas_name VARCHAR(255),
  book_id INT REFERENCES buku(id),
  peminjaman_id INT REFERENCES peminjaman(id)
);

