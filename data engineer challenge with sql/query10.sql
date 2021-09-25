#Tampilkan daftar pelanggan yang belum pernah melakukan transaksi

SELECT ms_pelanggan.kode_pelanggan,
	ms_pelanggan.nama_pelanggan,
	ms_pelanggan.alamat
FROM ms_pelanggan
LEFT JOIN tr_penjualan USING(kode_pelanggan)
LEFT JOIN tr_penjualan_detail USING(kode_transaksi)
GROUP BY kode_pelanggan
HAVING SUM(tr_penjualan_detail.qty * tr_penjualan_detail.harga_satuan) IS NULL;