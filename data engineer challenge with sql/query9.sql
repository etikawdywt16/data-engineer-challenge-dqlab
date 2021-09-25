#Siapa saja pelanggan yang paling banyak menghabiskan uangnya untuk belanja? Jika ada lebih dari 1 pelanggan dengan nilai yang sama, tampilkan semua pelanggan tersebut.

WITH tabel_maksimum AS (
	SELECT SUM(tr_penjualan_detail.qty * tr_penjualan_detail.harga_satuan) AS total_harga_with
	FROM ms_pelanggan
	JOIN tr_penjualan USING(kode_pelanggan)
	JOIN tr_penjualan_detail USING(kode_transaksi)
	GROUP BY kode_pelanggan)

SELECT ms_pelanggan.kode_pelanggan,
	ms_pelanggan.nama_pelanggan,
	SUM(tr_penjualan_detail.qty * tr_penjualan_detail.harga_satuan) AS total_harga
FROM ms_pelanggan
JOIN tr_penjualan USING(kode_pelanggan)
JOIN tr_penjualan_detail USING(kode_transaksi)
GROUP BY kode_pelanggan
HAVING total_harga IN (
	SELECT MAX(total_harga_with)
	FROM tabel_maksimum);