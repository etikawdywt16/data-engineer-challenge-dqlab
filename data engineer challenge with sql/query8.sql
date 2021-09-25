#Tampilkan produk yang paling banyak terjual dari segi kuantitas. Jika ada lebih dari 1 produk dengan nilai yang sama, tampilkan semua produk tersebut.

SELECT ms_produk.kode_produk, ms_produk.nama_produk, SUM(tr_penjualan_detail.qty) AS total_qty
FROM ms_produk JOIN tr_penjualan_detail
USING(kode_produk)
GROUP BY kode_produk
HAVING total_qty IN (
	SELECT MAX(a.total) FROM (
		(SELECT SUM(qty) AS total FROM tr_penjualan_detail GROUP BY kode_produk)) AS a)