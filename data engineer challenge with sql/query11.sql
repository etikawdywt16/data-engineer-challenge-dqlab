#Tampilkan transaksi-transaksi yang memiliki jumlah item produk lebih dari 1 jenis produk. Dengan lain kalimat, tampilkan transaksi-transaksi yang memiliki jumlah baris data pada table tr_penjualan_detail lebih dari satu.

SELECT tr_penjualan_detail.kode_transaksi,
	ms_pelanggan.kode_pelanggan,
	ms_pelanggan.nama_pelanggan,
	tr_penjualan.tanggal_transaksi,
	COUNT(tr_penjualan_detail.qty) AS jumlah_detail
FROM ms_pelanggan
JOIN tr_penjualan USING(kode_pelanggan)
JOIN tr_penjualan_detail USING(kode_transaksi)
GROUP BY kode_transaksi
HAVING jumlah_detail > 1;