module ShopsHelper

    def translate_eng_date
        array_weekday = Array.new 
        for n in (0..6)         
            day = Date.today + n
            array_weekday << day.strftime("%a").downcase            
        end
        return array_weekday
    end

    def translate_french_date
        array_weekday_in_french = Array.new
        for n in (0..6)        
            day_in_french = I18n.localize Date.today + n, format: :very_short 
            array_weekday_in_french << day_in_french
            
        end
        return array_weekday_in_french
    end
end
