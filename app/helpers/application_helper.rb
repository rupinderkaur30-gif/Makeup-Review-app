module ApplicationHelper
    def pretty_time(time)
        time.strftime("%m/%d/%Y %l:%M %p")
    end
end
