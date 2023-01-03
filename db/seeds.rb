Shop.destroy_all
ShopHour.destroy_all

shop_test = Shop.create(name: "Pet Shop Boys")
Shop.create(name: "Baker Miller Pink")
Shop.create(name: "Lost Supermarket")
Shop.create(name: "Paul's Boutique")
Shop.create(name: "Candy Shop")

shop_hour_test =  ShopHour.create!(shop_id: 1, hours: 
  { :mon => {'' => ''},
    :tue => {'09:00' => '12:00', '13:00' => '17:00'},
    :wed => {'09:00' => '12:00', '13:00' => '17:00'},
    :thu => {'09:00' => '12:00', '13:00' => '17:00'},
    :fri => {'09:00' => '12:00', '13:00' => '17:05'},
    :sat => {'19:00' => '00:00'},
    :sun => {'19:00' => '00:00'}
  }
)

shop_hour_test2 =ShopHour.create!(shop_id: 2, hours: 
  { :mon =>{'09:00'=>'12:00', '13:00'=>'17:00'},                  
    :tue =>{''=>''},                  
    :wed =>{'09:00'=>'12:00', '13:00'=>'18:00'},
    :thu =>{''=>''},
    :fri =>{'19:00'=>'21:00'},
    :sat =>{'19:00'=>'21:00'},
    :sun =>{'19:00'=>'21:00'}
  }
)

shop_hour_test3 =ShopHour.create!(shop_id: 3, hours: 
  { :mon =>{'09:00'=>'12:00', '13:00'=>'17:00'},                  
    :tue =>{'09:00'=>'12:00', '13:00'=>'17:00'},                  
    :wed =>{'09:00'=>'12:00', '13:00'=>'17:00'},
    :thu =>{'09:00'=>'12:00', '13:00'=>'17:05'},
    :fri =>{'19:00'=>'21:00'},
    :sat =>{''=>''},
    :sun =>{''=>''}
  }
)

shop_hour_test3 =ShopHour.create!(shop_id: 4, hours: 
  { :mon =>{'09:00'=>'12:00', '13:00'=>'17:00'}, 
    :tue =>{'09:00'=>'12:00', '13:00'=>'17:00'},
    :wed =>{'09:00'=>'12:00', '13:00'=>'17:00'},
    :thu =>{'09:00'=>'12:00', '13:00'=>'17:05'},
    :fri =>{'19:00'=>'21:00'},
    :sat =>{'19:00'=>'21:00'},
    :sun =>{''=>''}
  }
)
