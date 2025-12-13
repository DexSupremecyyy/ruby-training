class PagesController < ApplicationController
  def introduction
    
  end

  def sapa_balik
    flash[:notice] = "Yowwwww Watsappp nigg-😎 Sehat sehat ya wir😜" # Flash ini semacam penyimpanan sementara untuk notif
    # Panggil :notice untuk memunculkan notif

    redirect_to root_path # kita kasih redirect untuk memindahkan ke root
  end
end
