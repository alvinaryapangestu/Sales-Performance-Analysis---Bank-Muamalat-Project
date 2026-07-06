# Data Modeling & Entity Relationship

## 1. Skema Dataset

Dataset terdiri dari 4 tabel bertipe **star schema**, dengan `Orders` sebagai fact table
dan tiga tabel lainnya sebagai dimension table.

| Tabel | Kolom | Primary Key |
|---|---|---|
| **Customers** | CustomerID, FirstName, LastName, CustomerEmail, CustomerPhone, CustomerAddress, CustomerCity, CustomerState, CustomerZip | `CustomerID` |
| **Products** | ProdNumber, ProdName, Category, Price | `ProdNumber` |
| **Orders** | OrderID, Date, CustomerID, ProdNumber, Quantity | `OrderID` |
| **ProductCategory** | CategoryID, CategoryName, CategoryAbbreviation | `CategoryID` |

## 2. Relationship Antar Tabel

```
Customers (1) ────────< (N) Orders (N) >──────── (1) Products (N) >──── (1) ProductCategory
     CustomerID            CustomerID   ProdNumber      ProdNumber        Category = CategoryID
```

- **Customers → Orders**: One-to-Many. Satu customer bisa melakukan banyak order,
  dihubungkan lewat `Orders.CustomerID = Customers.CustomerID`.
- **Products → Orders**: One-to-Many. Satu produk bisa muncul di banyak order,
  dihubungkan lewat `Orders.ProdNumber = Products.ProdNumber`.
- **ProductCategory → Products**: One-to-Many. Satu kategori bisa menaungi banyak produk,
  dihubungkan lewat `Products.Category = ProductCategory.CategoryID`.

## 3. Diagram ERD (visual)

> ![ERD](https://github.com/alvinaryapangestu/Sales-Performance-Analysis---Bank-Muamalat-Project/blob/8ca529db24ca09bff0d901346adb9e678c6274e8/docs/screenshots/erd.svg)

## 4. Kesimpulan

Model data ini adalah **star schema** klasik untuk kasus analitik penjualan:
- Fact table (`Orders`) menyimpan transaksi granular (level baris = 1 order item)
- Dimension table menyimpan atribut deskriptif (siapa customer-nya, apa produknya, kategori apa)

