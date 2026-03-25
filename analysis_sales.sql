-- 1. Total penjualan per produk
SELECT product_id,
       SUM(jumlah * harga) AS total_penjualan
FROM sales_data
GROUP BY product_id;

-- 2. Jumlah transaksi per produk
SELECT product_id,
       COUNT(*) AS jumlah_transaksi
FROM sales_data
GROUP BY product_id;

-- 3. Rata-rata penjualan per produk
SELECT product_id,
       AVG(jumlah * harga) AS rata_rata_penjualan
FROM sales_data
GROUP BY product_id;

-- 4. Total penjualan per hari
SELECT tanggal,
       SUM(jumlah * harga) AS total_penjualan_harian
FROM sales_data
GROUP BY tanggal;

-- 5. Produk dengan penjualan tertinggi
SELECT product_id,
       SUM(jumlah * harga) AS total_penjualan
FROM sales_data
GROUP BY product_id
ORDER BY total_penjualan DESC
LIMIT 1;