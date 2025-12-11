# Inheritence (Pewarisan)
# Adalah sebuah trik agar kita tidak perlu menduplikat sebuah method lagi
 
# ini contoh simple nya


# Kita buat dulu kelas bernama Penduduk sebagai role dari pemain
# isi nya sebagaimana penduduk biasa bisa ngelakuin apa aja, contoh nya penduduk bisa jalan, bisa lari, bisa mukul
class Penduduk
  # Kita anisiasi dulu untuk nama pemain nya agar nanti saat berbicara, output nya bisa menggunakan nama lebih dari 1
  # kayak contoh nya :
  # Di saat bagian Pemain Jaka, dia ingin menjalankan method, yaitu "berbicara", nah nanti kalo bicara bakal muncul output "Jaka : Woii"
  def initialize(nama_pemain) 
    @nama_user = nama_pemain
  end


  # Method Function Nya
  def jalan
    puts "Tap tap tap(Berjalan)"
  end

  def lari
    puts "Zig zig zig (Berlari)"
  end

  def memukul
    puts "Bugh (Memukul dengan tangan kosong)"
  end

  def berbicara
    print "Berbicara : "
    bicara = gets.chomp # Ini Untuk input
    puts "#{@nama_user} : #{bicara}" # Nah kita panggil variable instance yang sudah di inisiasi tadi, yaitu #{@nama_user}
  end
end

# Nah Disini kita buat class baru yaitu Swordman sebagai role baru
# Nah guna nya inheritence tuh disini :
# Kita gak perlu ngulang ngebuat method yang sama seperti method "Jalan", "Lari" atau "Bicara"
# Karena kita cukup ambil dari class Penduduk, jadi si Swordman ini udah punya fungsi kayak jalan tanpa perlu ngulang ngebuat method nya
# cara nya dengan menggunakan "<" terus masukin deh pake class yang mau di pake, contoh : Swordman < Penduduk
class Swordman < Penduduk 
  # Nah jadi intinya si Swordman ini mewarisi method dari class Penduduk 
  # dan juga Swordman juga punya method spesial yang gak dimiliki sama class Penduduk, yaitu method "menebas"
  def menebas
    puts "Sing (Menebas Menggunakan Pedang)"
  end
end

# Running nya
puts "--- Pemain : Jaka ---" # Ini Hanya sebagai judul aja
jaka = Penduduk.new("Jaka") 
# Nah agar kita tau bahwa variable "jaka" itu identitas nya beneran "Jaka", kita harus tambahin setelah .new tambahin ("Jaka")
jaka.lari
jaka.berbicara


puts "--- Pemain : Rivaldi ---"
rivaldi = Swordman.new("Rivaldi")
rivaldi.lari
rivaldi.berbicara
rivaldi.menebas