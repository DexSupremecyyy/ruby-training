# mencoba membuat form login simpel


# Ini class sebagai blue print
class User
    attr_reader :username, :password


    def initialize(username_input, password_input)
      @username = username_input
      @password = password_input
    end
end

# Sumber Data
DB_USER = [
    User.new("admin", "admin123"),
    User.new("jaka", "jaka890"),
    User.new("user", "user123")
]


# Method logic + form login nya
def login_form

    # Form Login
    puts "============="
    puts "====Login===="
    puts "============="
    ## Bagian Input Nya di simpen ke variable, biar bisa di panggil nanti di method logic
    print "Username : "
    username_input = gets.chomp
    
    print "Password : "
    password_input = gets.chomp



    
    temukan_akun = DB_USER.find { |u| u.username == username_input }
    # Ini pake cara one liner (Hanya satu baris), sebener nya kita juga bisa pake do, tapi karena kita mau jalanin printah yang cuma dikit jadi gak perlu pake, cukup di ganti menjadi "{}"
    #   
    #   Contoh Kalo Lupa gimana pake "do" : 
    #   temukan_akun = DB_USER.find do |u| 
    #       u.username == input_username 
    #   end
    #
    # Flownya gini (menurut saya) : 
    # jadi kita tuh ngebuat wadah kosong bernama temukan_akun
    # nah di dalam wadah nya tuh ngejalanin query 
    # akses ke sumber data -> DB_USER
    # temukan -> .find 
    # Buat blok parameter bernama |u|
    # eksekusi di variable sementara yaitu -> U yang sudah kita masukin ke blok
    # akses ke variable buat bisa nge akses sumber data(karena "u" berisi sumber data) -> u
    # karena udah mengakses variable "u" maka kita cari value daro :username -> .username
    # terus kita bandingkan apakah value yang ada di .username itu isinya sama dengan yang dicari user yang mana masuk ke parameter username_input?
    
    
    # Jika penjelasan nya tidak jelas, maka ini visualisasi dari Ai Gemini
    # 
    # Skenario: username_input = "jaka"
    # Looping Pertama (Start):
    # 
    # u sekarang memegang: User.new("admin", "admin123")
    #
    # Cek: Apakah u.username ("admin") == "jaka"?
    #
    # Hasil: FALSE (Gak sama).
    #
    # Tindakan: Lanjut ke antrian berikutnya.
    #
    # Looping Kedua:
    #
    # u sekarang memegang: User.new("jaka", "jaka890")
    #
    # Cek: Apakah u.username ("jaka") == "jaka"?
    #
    # Hasil: TRUE (Sama!).
    #
    # Tindakan: STOP! Gak usah cek sisanya. Ambil object ini, masukin ke variable temukan_akun.



    # Bagian Validasi percabangan nya
    if temukan_akun == nil
        puts "Akun Tidak Ditemukan"
    elsif temukan_akun.password == password_input  # oh iya, saya mention di bagian ini, kita juga bisa panggil parameter password yang ada di dalam class User (jadi gak cuma paramater username saja). Ini tuh berkat dari syntax attr_reader yang mana mengizinkan agar bisa mengakses fungsi fungsi yang ada di dalam class User dari luar dengan di wakilkan oleh variable dengan di tandai :variable . 
    # Contoh nya nih : attr_reader :user, :password
    # Nah untuk :user itu ngewakilin dari parameter username_input dari method yang sudah di initialize menjadi @username
        puts "Login Berhasil! Hallo #{temukan_akun.username}"
    else
        puts "Password Salah"
    end
end


# Panggil method login_form -> fungsi nya untuk menjalankan form login yang kita buat barusan
login_form