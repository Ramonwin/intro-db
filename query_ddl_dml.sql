/*
==============  DDL =======================
*/
-- Membuat database
CREATE DATABASE db_kampus;
USE db_kampus;

-- membuat table mahasiswa
CREATE TABLE mahasiswa (
	npm INT(10) PRIMARY KEY,
	nama VARCHAR(30),
	jurusan VARCHAR(20));

-- menambahkan coloumn baru "alamat"
ALTER TABLE mahasiswa ADD alamat VARCHAR(50);

-- menghapus table mahasiswa
DROP TABLE mahasiswa;

-- menghapus isi table mahasiswa tanpa menghapus strukturnya
TRUNCATE TABLE mahasiswa;
/*
==============  DML =======================
*/
--menambahkan data ke dalam table mahasiswa
INSERT INTO mahasiswa VALUES(111111, 'Sarah', 'SI','Bandung'),
							(222222, 'Melinda', 'IF','jakarta'),
							(333333, 'Okta', 'IF','Bogor'),
							(444444, 'Fariz', 'SI','Depok');

-- menampilkan data dari table mahasiswa
SELECT * FROM mahasiswa;

-- update nama dari table mahasiswa dengan kriteria sesuai NPM
UPDATE mahasiswa SET nama='Septi Neiras' WHERE npm=444444;

-- menghapus table mahasiswa
DELETE FROM mahasiswa WHERE npm=444444;

/*
==============  QUERY =======================
*/

/*Menambahkan 3 kolom baru*/
ALTER TABLE mahasiswa ADD uas INT(10), ADD konversi FLOAT(10), ADD nilai_akhir INT(10);

/*Menghapus kolom uas*/
ALTER TABLE mahasiswa DROP uas

/*Update nilai konversi tanpa klausa*/
UPDATE mahasiswa SET konversi=0.4

/*Mengisi kolom baru sesuai perkalian*/
UPDATE mahasiswa SET nilai_akhir = uas * konversi

/*Mencari nilai akhir tertinggi*/
SELECT MAX(nilai_akhir) FROM mahasiswa	
SELECT nama, MAX(nilai_akhir) FROM mahasiswa  GROUP BY nama LIMIT 1
SELECT * FROM mahasiswa ORDER BY nilai_akhir DESC LIMIT 1

-- menghitung jumlah total mahasiswa / total row
SELECT COUNT(*) AS total_mahasiswa FROM mahasiswa

-- menghitung jumlah kesuluruhan total nilai
SELECT SUM(nilai_akhir)	 AS total_keseluruhan FROM mahasiswa