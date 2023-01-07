class ShopHour < ApplicationRecord
    belongs_to :shop

    def open_hour(day)
        hours["#{day}"].first[0]
    end

    def close_hour(day)
        hours["#{day}"].first[1]
    end

    def re_open_hour(day)
        hours["#{day}"].first(2).last[0]
    end

    def re_close_hour(day)
        hours["#{day}"].first(2).last[1]
    end
end
