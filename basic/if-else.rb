# Percabangan

daftar_server = [
  { nama: "Server App Utama", ip: "192.168.1.10", status: "online", cpu_usage: 45 },
  { nama: "Database Master", ip: "192.168.1.12", status: "online", cpu_usage: 95 },
  { nama: "Server Backup", ip: "192.168.1.20", status: "offline", cpu_usage: 0 },
  { nama: "Cache Redis", ip: "192.168.1.15", status: "maintenance", cpu_usage: 10 }
]

puts "-----------------"
puts "Monitoring Server"
puts "-----------------"
puts "==Status Server=="

# Percabangan ada if, elsif, else, dan unless
# unless = mengeksekusi jika salah
# nested if = ada if di dalam else

daftar_server.each do |monitoring|
    if monitoring[:status] == "offline" 
      puts "#{monitoring[:nama]} : Server Offline"

    elsif monitoring[:status] == "maintenance"
      puts "#{monitoring[:nama]} : Server Sedang Masa Perbaikan"
    
    else # Nested If
      if monitoring[:cpu_usage] > 90
        puts "#{monitoring[:nama]} : WARNING!! Server Panas!! Usage : #{monitoring[:cpu_usage]}%"
      else
        puts "#{monitoring[:nama]} : Server ON"
      end # ini end bagian if nested

    end # harus di perhatikan, ini tuh end dari bagian if paling atas
     
    unless monitoring[:cpu_usage] > 50 # Ini seperti kebalikan dari if (lawan nya)
      puts "Dingin"
    else
      puts "Panas"
    end

    puts ""
end # ini end bagian looping
