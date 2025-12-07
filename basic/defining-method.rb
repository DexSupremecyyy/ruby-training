# Defining method, Refactoring dengan teknik extract method
# Digunakan agar mempermudah untuk pengamanggilan dengan banyak, kayak membuat fungsi di godot bedanya di ruby pake def 


# Sekedar Ingfo nih
# def = itu di sebut nya method
# untuk membuat method butuh varible sementara jadi tambahkan paramater bebas contoh : cek_stok(barang)
# 
# Defining Method = Nge define method/bisa dibilang membuat fungsi
# Refactoring = Merapikan kode, sebelum nya kan fungsi fungsi pada numpuk di looping, tapi sekarang karena fungsi nya itu udah di pindah ke method dan terlihat lebih clean
# Extract Method = sebutan untuk pemindahan func jadi in method

# Define Method & Extract Method
# pakai def nama_bebas + parameter bebas sebagai wadah sementara untuk mengeksekusi dari blok |item|
def cek_stok(barang) 
    if barang[:stok] == 0
      puts "#{barang[:nama]} => Stok Habis"

    elsif barang[:stok] < 5 
      puts "#{barang[:nama]} => Stok Hampir Habis"

    else
      puts "#{barang[:nama]} => Stok masih aman. Stok Tersisa : #{barang[:stok]}"
    end
end


# Varible sebagai Sumber data nya
daftar_produk = [
  { nama: "Laptop ROG", harga: 15000000, stok: 10 },
  { nama: "Mouse Wireless", harga: 150000, stok: 0 }, 
  { nama: "Keyboard RGB", harga: 500000, stok: 3 }, 
  { nama: "Monitor 24in", harga: 2000000, stok: 25 }
]

# Refactoring function dengan method
# Looping dengan memanggil method nya saja
daftar_produk.each do |item|
  cek_stok(item) # Panggil method nya yang udah dibuat di atas, terus kasih sebuah parameter dari blok agar method tau mau nge eksekusi dari data mana. Karena parameter item itu iterasi dari array "daftar_produk"
end

