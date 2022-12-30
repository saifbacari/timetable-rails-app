module ApplicationHelper
    def time_select_options(step=15)
        tod = Tod::TimeOfDay.new 0
        times = []
        96.times do
          times << [tod.strftime("%l:%M %P"), tod]
          tod = tod + step.minutes
        end
        times
    end
end
