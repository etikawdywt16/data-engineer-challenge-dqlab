#Tampilkan nama-nama pelanggan dan urutkan hasilnya berdasarkan kolom nama_pelanggan dari yang terkecil ke yang terbesar (A ke Z), namun gelar tidak boleh menjadi bagian dari urutan. Contoh: Ir. Ita Nugraha harus berada di bawah Irwan Setianto.

SELECT * FROM ms_pelanggan
ORDER BY SUBSTRING_INDEX(nama_pelanggan, ". ", -1);