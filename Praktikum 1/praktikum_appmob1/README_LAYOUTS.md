# Flutter Layout Widgets Demo

Proyek ini mendemonstrasikan berbagai layout widgets dasar di Flutter.

## Struktur Folder

```
lib/
├── main.dart                          # File utama aplikasi
└── layouts/                           # Folder khusus untuk layout widgets
    ├── container_layout.dart          # Demo Container widget
    ├── row_column_layout.dart         # Demo Row & Column widgets
    ├── stack_layout.dart              # Demo Stack widget
    ├── listview_layout.dart           # Demo ListView widget
    ├── gridview_layout.dart           # Demo GridView widget
    └── wrap_layout.dart               # Demo Wrap widget
```

## Layout Widgets yang Diimplementasikan

### 1. **Container Layout**
- Container dengan border dan border radius
- Container berbentuk lingkaran (circle)
- Container dengan gradient
- Container dengan shadow (box shadow)

### 2. **Row & Column Layout**
- **Row**: Layout horizontal dengan 3 box berwarna
- **Column**: Layout vertikal dengan 3 item box

### 3. **Stack Layout**
- Overlay widgets dengan posisi absolut
- Positioned widget untuk menempatkan elemen di top-left, top-right, dan bottom-center
- Background gradient

### 4. **ListView Layout**
- **Horizontal ListView**: Scroll horizontal dengan 5 item
- **Vertical ListView**: List tile dengan avatar, title, subtitle, dan trailing icon

### 5. **GridView Layout**
- Grid 3x3 dengan 9 item
- Setiap item memiliki icon dan text
- Menggunakan warna dari Colors.primaries

### 6. **Wrap Layout**
- Chips yang otomatis wrap ke baris baru
- 9 chip dengan berbagai warna dan label

## Cara Menjalankan

```bash
# Pastikan berada di folder project
cd flutter_application_1

# Jalankan di Chrome
flutter run -d chrome

# Atau jalankan di Android emulator
flutter run

# Atau jalankan di device yang terhubung
flutter run -d <device_id>
```

## Fitur Utama

- ✅ Semua layout ditampilkan dalam **satu halaman** tanpa navigasi
- ✅ Menggunakan `SingleChildScrollView` untuk scroll vertikal
- ✅ Setiap layout dipisahkan dengan `Divider`
- ✅ Menggunakan Material Design 3
- ✅ Warna-warna menarik dan konsisten
- ✅ Responsive design

## Screenshot Tampilan

Aplikasi menampilkan semua layout widgets secara berurutan:
1. Container Layout (biru)
2. Row & Column Layout (hijau)
3. Stack Layout (ungu)
4. ListView Layout (oranye)
5. GridView Layout (teal)
6. Wrap Layout (indigo)

## Teknologi

- Flutter SDK
- Material Design 3
- Dart Language
