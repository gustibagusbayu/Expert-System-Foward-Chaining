-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2020 pada 09.01
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyakitginjal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `gejala`) VALUES
(1, 'Nyeri pinggang hebat(kolik)'),
(2, 'Kencing sakit'),
(3, 'Demam'),
(4, 'Kencing Sedikit'),
(5, 'Kencing merah/darah'),
(6, 'Sering kencing'),
(7, 'Hilang nafsu makan'),
(8, 'Lelah dan lemah'),
(9, 'Bermasalah dalam tidur'),
(10, 'Otot terkedutdan kejang'),
(11, 'Bengkak pada area kaki'),
(12, 'Timbul rasa gatal'),
(13, 'Nyeri pada saat buang air kecil'),
(14, 'Urin berwarna pink, merah atau coklat'),
(15, 'Mual dan muntah'),
(16, 'Sering buang air kecil'),
(17, 'Nyeri punggung, pinggul atau pangkal paha'),
(18, 'Nyeri pada perut'),
(19, 'Nanah atau darah pada urin'),
(20, 'Tubuh terasa sangat lelah sekali tanpa sebab apapun'),
(21, 'Rasa nyeri pada sisi yang tidak hilang'),
(22, 'Adanya darah dalam urin'),
(23, 'Tekanan darah tinggi'),
(24, 'Darah dalam air kencing'),
(25, 'Rasa lemah serta sulit tidur'),
(26, 'Sakit kepala'),
(27, 'Sesak nafas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `penyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `penyakit`) VALUES
(1, 'Gagal Ginjal Akut'),
(2, 'Gagal Ginjal Kronis'),
(3, 'Batu Ginjal'),
(4, 'Infeksi Ginjal'),
(5, 'Kanker Ginjal'),
(6, 'Gagal Ginjal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

CREATE TABLE `relasi` (
  `id_relasi` int(11) NOT NULL,
  `id_gejala` int(11) DEFAULT NULL,
  `id_penyakit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`id_relasi`, `id_gejala`, `id_penyakit`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 2),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2),
(13, 13, 3),
(14, 14, 3),
(15, 15, 3),
(16, 16, 3),
(17, 17, 3),
(18, 18, 4),
(19, 19, 4),
(20, 20, 5),
(21, 21, 5),
(22, 22, 5),
(23, 23, 6),
(24, 24, 6),
(25, 25, 6),
(26, 26, 6),
(27, 27, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

CREATE TABLE `solusi` (
  `id_solusi` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `solusi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id_solusi`, `id_penyakit`, `solusi`) VALUES
(1, 1, 'Menjaga kesehatan ginjal'),
(2, 1, 'Ikuti petunjuk pada kemasan obat, jika anda menggunakan obat tanpa resep yang dijual bebas'),
(3, 1, 'Ikuti petunjuk dokter, jika anda memiliki penyakit ginjal atau kondisi lain yang meningkatkan resiko'),
(4, 1, 'Lakukan teknik pernafasan dengan diafragma untuk membuat anda lebih tenang'),
(5, 2, 'Menjalani cuci darah'),
(6, 2, 'Transplantasi ginjal'),
(8, 2, 'Menjalankan diet khusus, yaitu dengan mengurangi konsumsi garam, serta membatasi asupan protein dan '),
(9, 2, 'Berkonsultasi dan senantiasa mengamati kondisi kesehatan dengan memeriksakan diri ke dokter secara t'),
(10, 3, 'Minum air putih sebanyak 6-8 gelas air setiap hari.'),
(11, 3, 'Mengonsumsi obat pereda nyeri, karena keluarnya batu ginjal melalui urine dapat menimbulkan rasa sak'),
(12, 4, 'Perbanyak minum air putih untuk membuang bakteri dari ginjal, serta untuk mencegah dehidrasi.'),
(13, 4, 'Gunakan bantal hangat pada perut, punggung, atau pinggang untuk mengurangi rasa nyeri.'),
(14, 4, 'Khusus pasien wanita, jangan buang air kecil dalam posisi jongkok, melainkan dalam posisi duduk di a'),
(15, 4, 'Istirahat yang cukup.'),
(16, 5, 'Berhenti merokok.'),
(17, 5, 'Selalu menjaga tekanan darah.'),
(18, 5, 'Menjaga berat badan ideal untuk menghindari obesitas dengan perbanyak konsumsi buah dan sayur, serta'),
(19, 5, 'Gunakan alat pelindung diri di lingkungan kerja yang rentan terhadap paparan zat-zat berbahaya.'),
(20, 6, 'Memperbanyak konsumsi air putih, yaitu sekitar 2 liter per hari'),
(21, 6, 'Membatasi konsumsi alkohol'),
(22, 6, 'Menghentikan kebiasaan merokok'),
(23, 6, 'Menerapkan pola makan yang sehat dan bergizi seimbang'),
(24, 6, 'Melakukan operasi.'),
(25, 6, 'Cuci darah secara berkala.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `role`, `nama`, `email`, `alamat`, `tgl_lahir`, `password`) VALUES
(1, 1, 'Bayu Adi', 'bayu@gmail.com', 'Belayu', '2020-04-15', '$2y$10$QxzfxQ6eAAfr48pne8ZX0OvPTRrvD/xPa8qEElpby.6O0LYEW2FFm'),
(2, 0, 'admin', 'admin@gmail.com', 'Tabanan', '2020-04-17', '$2y$10$ASS50col3niwOOku4Zkky.HpmF18hiPWL9pi2DnE8CS7jTDSD4ufe'),
(4, 2, 'Dokter Budi', 'budi@gmail.com', 'Badung', '2020-04-09', '$2y$10$n2nS/Rg7Zvjdv.q1mrv7TOJYrzf18LVQQzsWuDWqPf5Ieos/OIWiG'),
(5, 1, 'adi', 'adi@gmail.com', 'Badung', '2020-05-21', '$2y$10$ge9myh0TIg1tGwsOm6KZ5eriUxWhYswmHFx84dEsrwxpYbXdijKGC'),
(6, 2, 'Dokter Jaya', 'jaya@gmail.com', 'Denpasar', '2020-05-12', '$2y$10$Hb0Q.SpDMZ1m34GlQSnB4.GkKM9wBRwWsrHUIFwn4sV6M7JGNPIV.'),
(7, 2, 'Dokter Sally', 'sally@gmail.com', 'Kuta', '2020-05-28', '$2y$10$xP98m86lQdD8oE/dpTyvh.7.4oAsbcj0.H5Ekw0UhGFCoyaqc49W2'),
(10, 1, 'test', 'test@gmail.com', 'asjadja', '2020-06-15', '$2y$10$KIVNLDg1RABhFvjKmfwR4eDUb90lCthb5/ZgNW8GNFvhL3L5ju0qO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD PRIMARY KEY (`id_relasi`),
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indeks untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD PRIMARY KEY (`id_solusi`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `relasi`
--
ALTER TABLE `relasi`
  MODIFY `id_relasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `solusi`
--
ALTER TABLE `solusi`
  MODIFY `id_solusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `relasi_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`),
  ADD CONSTRAINT `relasi_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`);

--
-- Ketidakleluasaan untuk tabel `solusi`
--
ALTER TABLE `solusi`
  ADD CONSTRAINT `solusi_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
