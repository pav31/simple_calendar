module SimpleCalendar
  class MonthCalendar < SimpleCalendar::Calendar
    private

    def date_range
      months = []
      number_of_months.times do |number|
        current_month = (start_date + number.months)
        starting = current_month.beginning_of_month.beginning_of_week
        ending = current_month.end_of_month.end_of_week

        months << (starting..ending).to_a
      end
      months
    end

    def number_of_months
      options.fetch(:number_of_months, 1)
    end
  end
end
