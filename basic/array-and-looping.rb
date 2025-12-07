# Array & Looping

# Sekedar ingfo nih
# [] = ini disebut array
# {} = ini disebut hash
# [:nama] = ini tuh di sebut nya key ya adick adick, soalnya ini kunci dari si hash
# contoh : #{orang[:nama]} 
#
# daftar_siswa = ini adalah bagian untuk ngambil sumber data dari array daftar_siswa
# .each = ini semacam perintah untuk melooping
# |varibale| = ini itu di sebut nya block paramater , bersifat sementara
# "do" = ini namanya BLOCK. Area kerja di mana kode bakal dijalankan berulang-ulang.
# "end" = ini untuk mengakhiri eksekusi dari si "do"

## Array
daftar_siswa = [
  { nama: "Ahmadi Jaka Abdul Manaf", kelas: "12", jurusan: "PPLG", umur: "17"},
  { nama: "Moch Rivaldi", kelas: "12", jurusan: "PPLG", umur: "19"},
  { nama: "Haikal Darrunnajmi", kelas: "12", jurusan: "PPLG", umur: "18"}
]


## Looping
# Looping (Pakai .each = untuk melooping, "do" = eksekusi ke, "|bebas|" = hanya variable sementara)
daftar_siswa.each do |siswa| 
# Logika nya : 
# Ambil dari variable daftar_siswa yang di atas, terus jalanin .each untuk nge looping data yang ada di daftar siswa, tamabhkan "do" Untuk mengeksekusi ke... , buat "|variable sementara jadi bebas mau namain apaan|" 
    
puts "-------------------------------"
puts "Nama : #{siswa[:nama]}"
puts "Kelas : #{siswa[:kelas]}"
puts "Jurusan : #{siswa[:jurusan]}"
puts "Umur : #{siswa[:umur]}"
# Logikanya : .each akan jalanin puts untuk nge print dari variable sementara "#{siswa}", terus ambil value dari hash nya dengan manggil key nya "[:nama]"

end # Ini untuk mengakhiri eksekusi dari do

