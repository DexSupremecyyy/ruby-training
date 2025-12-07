# Encapsulation
# 

class Produk # huruf awal harus kapital
  # Class ini bisa berisi banyak method
  # Lebih baik buat method global (tapi hanya berlaku di dalem class)
    
    # inisialisasi method
    # untuk sebagai menyimpan data/bisa di bilang wadah untuk isi dari object
    # fungsi nya biar mempermudah pemanggilan 
    def initialize(nama_mobil, harga_mobil, stok_barang)
      @nama = nama_mobil
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
        puts "Stok masih banyak #{@stok}"
      end
    end
end


puts "=== Dealer Mobil ==="


# Object
buggatti = Produk.new("Chiron", 10000000000, 4)
koeniseg = Produk.new("Zesko", 5000000000, 20)
ferrari = Produk.new("SF90 XX", 20000000000, 0)

# Pemanggilan varible dari object dan ngejalanin method logic cek_stok
buggatti.cek_stok
ferrari.cek_stok
koeniseg.cek_stok

