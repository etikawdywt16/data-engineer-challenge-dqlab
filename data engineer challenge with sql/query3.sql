#Tampilkan hanya nama-nama pelanggan yang hanya memiliki gelar-gelar berikut: S.H, Ir. dan Drs.

SELECT * FROM ms_pelanggan WHERE
nama_pelanggan LIKE '%S.H%' OR
nama_pelanggan LIKE '%Ir.%' OR 
nama_pelanggan LIKE '%Drs.%';