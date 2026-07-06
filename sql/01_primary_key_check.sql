-- TUJUAN: Membuktikan kolom mana yang menjadi Primary Key (PK)
--         pada masing-masing tabel dengan mengecek keunikan nilainya.
-- ============================================================

-- 1. Cek PK tabel Customers -> CustomerID
SELECT CustomerID, COUNT(*) AS jumlah
FROM `bank_muamalat_task.customers`
GROUP BY CustomerID
HAVING COUNT(*) > 1;

-- 2. Cek PK tabel Products -> ProdNumber
SELECT ProdNumber, COUNT(*) AS jumlah
FROM `bank_muamalat_task.products`
GROUP BY ProdNumber
HAVING COUNT(*) > 1;

-- 3. Cek PK tabel Orders -> OrderID
SELECT OrderID, COUNT(*) AS jumlah
FROM `.bank_muamalat_task.orders`
GROUP BY OrderID
HAVING COUNT(*) > 1;

-- 4. Cek PK tabel ProductCategory -> CategoryID
SELECT CategoryID, COUNT(*) AS jumlah
FROM `bank_muamalat_task.productcategory`
GROUP BY CategoryID
HAVING COUNT(*) > 1;
