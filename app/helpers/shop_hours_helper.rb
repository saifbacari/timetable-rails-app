require 'working_hours'

module ShopHoursHelper


    test = WorkingHours::Config.working_hours = {
        :tue => {'09:00' => '12:00', '13:00' => '17:00'},
        :wed => {'09:00' => '12:00', '13:00' => '17:00'},
        :thu => {'09:00' => '12:00', '13:00' => '17:00'},
        :fri => {'09:00' => '12:00', '13:00' => '17:05:30'},
        :sat => {'19:00' => '21:00'}
      }

puts test
end
