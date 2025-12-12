json.extract! post, :id, :judul, :isi, :created_at,:updated_at # Fungsi nya untuk mengkonversi data dari database, ini ngambil kolom id, judul, isi, waktu dibuat, waktu perbarui
json.url post_url(post, format: :json) # ini berfungsi untuk membuat url yang menampilkan hasil output dari data .json hasil konversi di atas
