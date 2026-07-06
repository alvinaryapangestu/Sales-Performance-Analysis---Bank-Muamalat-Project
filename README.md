# Sales-Performance-Analysis---Bank-Muamalat-Project
Sales performance analysis &amp; interactive dashboard using SQL (BigQuery) and Looker Studio — completed as part of BI Analyst Virtual Internship at Bank Muamalat x Rakamin Academy.

## 🔍 Proses Analisis

### 1. Data Modeling
Mengidentifikasi primary key dan relationship dari 4 tabel yang membentuk
**star schema** (fact table: Orders, dimension table: Customers, Products,
ProductCategory). Detail lengkap: [`docs/data_modeling.md`](docs/data_modeling.md)

### 2. Data Transformation (SQL)
Menggabungkan 4 tabel menjadi 1 master table siap analisis menggunakan SQL di
BigQuery, termasuk pembersihan data (regex untuk memperbaiki format email yang kotor).
Detail lengkap: [`sql/02_master_table.sql`](sql/02_master_table.sql)

### 3. Dashboard
Dashboard interaktif menampilkan total sales, breakdown per kategori & kota,
serta top 5 performer. Lihat: [`dashboard/README.md`](dashboard/README.md)

### 4. Business Recommendation
Insight kunci: kategori **Robots** mendominasi total sales meski volume unit
rendah (produk high-value low-volume), sementara **eBooks** sebaliknya. Insight
lengkap & rekomendasi strategis: [`docs/business_recommendation.md`](docs/business_recommendation.md)

## 📈 Key Insights (Ringkas)

- 💰 Total Sales: **1.754.750,57**
- 📦 Total Qty Terjual: **11.654 unit**
- 🏆 Kategori kontribusi sales tertinggi: **Robots**
- 📚 Kategori volume terjual tertinggi: **eBooks**
- 🌆 Kota kontribusi sales tertinggi: **Washington**

## 🔗 Live Dashboard

👉 [Lihat Dashboard Interaktif di Looker Studio](ISI-LINK-DI-SINI)

## 🎥 Video Presentasi

👉 [Tonton penjelasan lengkap project ini](ISI-LINK-YOUTUBE/DRIVE-DI-SINI)

## 👤 Author

**Alvin Arya Pangestu**
Fresh Graduate — Informatika, Universitas Darussalam Gontor
[LinkedIn](#) • [Portfolio](#)

---
*Project ini dibuat sebagai bagian dari Virtual Internship Experience (VIX)
Bank Muamalat melalui Rakamin Academy.*
