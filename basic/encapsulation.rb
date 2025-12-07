# Encapsulation
# 

# Sekedar Ingfo 
# @ = Instance Variable
# sifat nya dia tuh nempel dengan terus object. 
#          variable = object 
# contoh : @nama = nama_mobil  
# variable yang bisa di inheritance(atau di waris kan. contoh : puts "#{@nama}") ya adik adik


class Produk # huruf awal harus kapital
  # Class ini bisa berisi banyak method
  # Dan bisa untuk method global (tapi hanya berlaku di dalem class)
    
    # Sebuah code agar bisa membaca variable @nama dan @harga dari luar class
    attr_reader :nama, :harga # untuk :nama dan :harga itu nyari dari variale yang sama kayak :nama = @nama

    
    # inisialisasi method
    # untuk sebagai menyimpan data/bisa di bilang wadah untuk isi dari object
    # fungsi nya biar mempermudah pemanggilan 
    def initialize(nama_mobil, harga_mobil, stok_barang)
      @nama = nama_mobil  # variable harus sama dengan yang di cari attr_reader :nama
      @harga = harga_mobil
      @stok = stok_barang
    end

    # method logic
    def cek_stok
      if @stok == 0
        puts "#{@nama} : Stok Habis. Tersisa : #{@stok}"

      elsif @stok < 5
        puts "#{@nama} : Stok Hampir Habis. Terisisa : #{@stok}"

      else
        puts "#{@nama} : Stok masih banyak. Tersisa #{@stok}"
      end
    end
end


puts "=== Dealer Mobil ==="

list_mobil = [
  Produk.new("Chiron", 10000000000, 4),
  Produk.new("Zesko", 5000000000, 20),
  Produk.new("SF90 XX", 20000000000, 0)
]

list_mobil.each do |mobil|
  mobil.cek_stok
end


puts "==== Temukan Mobil ===="

target = list_mobil.find { |mobil| mobil.nama == "Zesko" }

puts "Mencari : "
target.cek_stok