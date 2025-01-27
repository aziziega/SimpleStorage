# Tracking Progress

Repositori ini berisi smart contract Solidity yang saya gunakan untuk belajar dan bereksperimen dengan pengembangan blockchain. saya belajar melalui Cyfrin.io, masih menggunakan Remix - Ethereum IDE.

## Smart Contract

#### Deploy:
- **Sepolia Test net**
  - Sudah Coba Deploy Di Test net ini
  - Cek [Sepolia.Ether.Scan](https://sepolia.etherscan.io/address/0x35c884a8eefa2d865a64062ccf5c3303a79b9bc5)
- **ZkSync Test Net**
  - Cek [Sepolia.Explorer.ZkSync](https://sepolia.explorer.zksync.io/address/0x35c884a8EeFA2D865A64062CcF5c3303a79b9bc5)
  - Verify Contract https://sepolia.explorer.zksync.io/address/0xe652d4ccf43F0A0aa37963232b5E4E3bC24d513F 
### 1. SimpleStorage.sol
Kontrak ini adalah contoh dasar untuk memahami penyimpanan dan manajemen data di Bahasa Pemrograman Solidity. Beberapa hal yang saya pelajari seperti Fitur-fitur yang termasuk di dalamnya:

#### Fitur:
- **Variabel State:**
  - `favNumber`: Variabel `uint256` publik dengan nilai default `0`.
  - `listOfPeople`: Array dinamis yang menyimpan struct `Person`.
  - Mapping untuk mengasosiasikan nama dengan angka favorit dan sebaliknya.

- **Fungsi:**
  - `store`: Memperbarui nilai `favNumber`.
  - `retrieve`: Mengambil nilai saat ini dari `favNumber`.
  - `addPerson`: Menambahkan `Person` baru (nama dan angka favorit) ke array `listOfPeople` dan memperbarui mapping.

#### Poin Pembelajaran:
- Memahami tipe data dasar (`uint256`, `string`, `struct`, dll.).
- Menerapkan array dinamis dan mapping.
- Menulis fungsi publik dan fungsi view.

---

### 2. StorageFactory.sol
Kontrak ini melanjutkan dari `SimpleStorage` dengan menampilkan pembuatan kontrak dan interaksi antar kontrak.

#### Fitur:
- **Pembuatan Kontrak:**
  - Fungsi `createSimpleStorageContract` untuk mendeklarasikan instance baru `SimpleStorage` dan menyimpan alamatnya di array.

- **Komunikasi Antar Kontrak:**
  - `sfStore`: Memungkinkan pembaruan variabel `favNumber` dari instance `SimpleStorage` tertentu.
  - `sfGet`: Mengambil nilai `favNumber` dari instance `SimpleStorage` tertentu.

- **Event:**
  - Memancarkan event `ContractCreated` setiap kali instance `SimpleStorage` baru dideploy.

#### Poin Pembelajaran:
- Mendeklarasikan kontrak secara programatik.
- Menggunakan array untuk mengelola banyak instance kontrak.
- Mengakses kontrak lain melalui alamat dan Application Binary Interface (ABI).
- Menerapkan event untuk pencatatan dan pelacakan yang lebih baik di blockchain.

---

### 3. AddFiveStorage.sol (Eksperimen Masa Depan)
Kontrak ini berfungsi sebagai tempat uji coba untuk memodifikasi atau menambahkan fungsionalitas pada `SimpleStorage`. Ide-ide yang mungkin mencakup implementasi operasi seperti menambahkan angka tetap ke nilai yang disimpan atau bereksperimen dengan inheritance.

---

## Alat dan Lingkungan
- **Target Kompilasi:** EVM (Ethereum Virtual Machine)
- **Lingkungan Pengembangan:** Remix - Ethereum IDE
- **Versi Solidity:** ^0.8.24

---

## Konsep yang Dipraktikkan
1. **Dasar-Dasar Solidity:** Tipe data, fungsi, visibilitas, struct, dan mapping.
2. **Pembuatan dan Interaksi Kontrak:**
   - Membuat dan mengelola beberapa instance kontrak.
   - Berkomunikasi antar kontrak menggunakan ABI.
3. **Kompatibilitas EVM:** Memastikan kontrak dikompilasi dan dideploy ke blockchain Ethereum atau jaringan Layer 2 seperti Polygon, Arbitrum, Optimism, dll.
4. **Pencatatan Event:** Menggunakan event untuk pelacakan aktivitas kontrak yang lebih baik.

---

## Langkah Berikutnya
- 

---

