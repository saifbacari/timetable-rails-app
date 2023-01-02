require 'working_hours'

Shop.destroy_all
ShopHour.destroy_all

shop_test = Shop.create(name: "Le galbé d'Amazonie")
Shop.create(name: "Fiduciaire")
Shop.create(name: "Dalloz")
Shop.create(name: "France Boutique")
Shop.create(name: "Creeple Creek Shop")

shop_hour_test =  ShopHour.create!(shop_id: 1, hours: 
  { :mon => {'' => ''},
    :tue => {'09:00' => '12:00', '13:00' => '17:00'},
    :wed => {'09:00' => '12:00', '13:00' => '17:00'},
    :thu => {'09:00' => '12:00', '13:00' => '17:00'},
    :fri => {'09:00' => '12:00', '13:00' => '17:05:30'},
    :sat => {'19:00' => '24:00'},
    :sun => {'19:00' => '24:00'}
  }
)

shop_hour_test2 =ShopHour.create!(shop_id: 2, hours: 
  {"lundi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},                  
  "mardi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},                  
  "mercredi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},
  "jeudi"=>{"09:00"=>"12:00", "13:00"=>"17:05:30"},
  "vendredi"=>{"19:00"=>"21:00"},
  "samedi"=>{"19:00"=>"21:00"},
  "dimanche"=>{"19:00"=>"21:00"}}
)

shop_hour_test3 =ShopHour.create!(shop_id: 3, hours: 
  {"lundi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},                  
  "mardi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},                  
  "mercredi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},
  "jeudi"=>{"09:00"=>"12:00", "13:00"=>"17:05:30"},
  "vendredi"=>{"19:00"=>"21:00"},
  "samedi"=>{"19:00"=>"21:00"},
  "dimanche"=>{"19:00"=>"21:00"}}
)

shop_hour_test3 =ShopHour.create!(shop_id: 4, hours: 
{"lundi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},
    "mardi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},
    "mercredi"=>{"09:00"=>"12:00", "13:00"=>"17:00"},
    "jeudi"=>{"09:00"=>"12:00", "13:00"=>"17:05:30"},
    "vendredi"=>{"19:00"=>"21:00"},
    "samedi"=>{"19:00"=>"21:00"},
    "dimanche"=>{""=>""}}
)
