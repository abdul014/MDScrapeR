<div align="center">
<h1>CoinMarketCap</h1>

<p>Scraping Data Cryptocurrency dari CoinMarketCap untuk Analisis Harga.</p>

<p align="center" width="100%">
    <img width="100%" src="https://calebandbrown.com/_gatsby/image/39de5f0fdbfc4eadff0ac7068ae2cdba/1af2d865a87b1484240483a75ac27ce3/MarketCapCover.webp?u=https%3A%2F%2Fimages.ctfassets.net%2F4ua9vnmkuhzj%2F4dglW5z2Bq5MAKu2wrybJD%2F600892b017dbef306f4e0a3f5b9c6f24%2FMarketCapCover.jpg&a=w%3D1920%26h%3D1080%26fm%3Dwebp%26q%3D80&cd=2022-11-04T00%3A44%3A22.015Z">
</p>

[![scrape_marketcap](https://github.com/abdul014/MDScrapeR/actions/workflows/main.yml/badge.svg)]
  
## 🪙: Menu
</p>

[Description](#pen-Description)
•
[Deskripsi Project](#writing_hand-project )
•
[Dokumen](#open_file_folder-Dokument)
•
[Visualisasi Data Scraping](#bar_chart-visualisasi-data-scraping)
•
[PPT](#computer-PPT)
•
[Pengembang](#man_technologist-pengembang)

</div>

## :pen: Description
<p align="justify">
CoinMarketCap sebagai platform terkemuka, menjadi sumber utama bagi informasi dan analisis harga cryptocurrency, terutama Bitcoin, yang dikenal sebagai mata uang kripto paling populer. Dari data real-time hingga historis, CoinMarketCap menyajikan informasi yang mudah diakses bagi para pengguna. Dengan alat analisis yang disediakan, pengguna dapat dengan mudah memantau tren pasar dan membuat keputusan investasi yang cerdas. Dengan menggunakan teknologi web scraping, pengembang dapat secara otomatis mengambil data harga Bitcoin dari CoinMarketCap untuk melakukan analisis mendalam atau membangun aplikasi baru dalam dunia cryptocurrency. CoinMarketCap, dengan peran pentingnya, memfasilitasi pengambilan keputusan investasi yang lebih cerdas dan menyediakan akses yang mudah ke informasi terkini tentang harga Bitcoin dan cryptocurrency lainnya.
</p>

## :writing_hand: project 
<p align="justify">
Proyek ini bertujuan untuk menjelajahi lebih dalam analisis harga cryptocurrency, terutama Bitcoin, dengan menggunakan teknik scraping pada website "https://coinmarketcap.com/". Dengan mengakses data langsung dari CoinMarketCap, kita dapat memperoleh wawasan yang mendalam tentang pergerakan harga dan tren pasar. Proyek ini tidak hanya memberikan pemahaman yang lebih baik tentang dinamika pasar cryptocurrency, tetapi juga membuka peluang untuk mengembangkan strategi investasi yang lebih cerdas dan responsif terhadap perubahan pasar. Proyek scraping data harga Bitcoin dari CoinMarketCap bertujuan untuk mengumpulkan berbagai informasi penting yang dapat memberikan wawasan mendalam tentang pasar cryptocurrency. 

Data yang diambil meliputi beberapa poin kunci berikut:
+ Nama cryptocurrency : dalam hal ini Bitcoin. Ini menunjukkan identitas dari aset digital yang sedang dianalisis.
+ Harga terkini Bitcoin dalam satuan mata uang tertentu (biasanya USD). Ini adalah nilai pasar saat ini untuk satu unit Bitcoin.
+ change_1h: Persentase perubahan harga Bitcoin dalam satu jam terakhir. Indikator ini menunjukkan volatilitas harga dalam jangka waktu yang sangat singkat.
+ change_24h: Persentase perubahan harga Bitcoin dalam 24 jam terakhir. Ini memberikan gambaran tentang fluktuasi harga harian Bitcoin.
+ change_7d: Persentase perubahan harga Bitcoin dalam tujuh hari terakhir. Data ini membantu memahami tren harga mingguan dan analisis performa jangka pendek.
+ Market Cap: Kapitalisasi pasar Bitcoin, yang merupakan total nilai pasar dari semua Bitcoin yang beredar. Ini dihitung dengan mengalikan jumlah total Bitcoin yang beredar dengan harga per unitnya.
+ volume_24h : Volume perdagangan Bitcoin dalam 24 jam terakhir. Ini menunjukkan jumlah total Bitcoin yang diperdagangkan dalam satu hari, yang merupakan indikator likuiditas pasar.
+ circulating_supply: Jumlah total Bitcoin yang saat ini beredar di pasar. Ini adalah jumlah koin yang tersedia untuk diperdagangkan dan dipegang oleh pengguna.
 </p> 
 
## :open_file_folder: Dokument
Berikut adalah salah satu contoh dokument di mongoDB dalam analisis harga cryptocurrency pada bitcoin
```mongodb
{"_id":{"$oid":"665373fac84edcd0f406e7a1"},
"time":{"$date":{"$numberLong":"1716745207690"}},
"name":"BitcoinBTC",
"price":{"$numberDouble":"68830.65"},
"change_1h":{"$numberDouble":"0.13"},
"change_24h":{"$numberDouble":"0.23"},
"change_7d":{"$numberDouble":"3.05"},
"market_cap":{"$numberDouble":"1.361355918"},
"volume_24h":{"$numberDouble":"14661305630213056.0"},
"circulating_supply":{"$numberDouble":"19703909.0"}}
```
## :computer: PPT
Berikut adalah link powerpoint berkaitan dengan project yang telah dibuat :

## :man_technologist: Pengembang
[ABD Rahman](https://github.com/abdul014/) (G1501231055)
