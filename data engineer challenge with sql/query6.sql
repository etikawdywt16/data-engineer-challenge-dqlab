#Tampilkan nama pelanggan yang memiliki nama paling panjang. Jika ada lebih dari 1 orang yang memiliki panjang nama yang sama, tampilkan semuanya.

SELECT * FROM ms_pelanggan
WHERE LENGTH(SUBSTRING_INDEX(SUBSTRING_INDEX(nama_pelanggan, ". ", -1), ", ", 1)) IN
	(SELECT MAX(LENGTH(SUBSTRING_INDEX(SUBSTRING_INDEX(nama_pelanggan, ". ", -1), ", ", 1)))
	FROM ms_pelanggan);