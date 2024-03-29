module DateRangePicker
  # extract objects which placed_at date falls within the range given
  # 
  # @param objects [Array] -> PlaceableAt Array
  # @param start_date [Date] -> Range start
  # @param end_date [Date] -> Range end
  # @param date_field [Symbol/String] -> Name of object's date field
  # @return within_range_arr [Array] -> Array of objects within the range
  def self.within_range(objects, start_date, end_date, date_field = :placed_at)
    within_range_arr = []
    objects.each do |obj|
      if obj.send(date_field.to_sym) >= start_date && obj.placed_at <= end_date
        within_range_arr << obj
      end
    end
    # return within_range array
    within_range_arr
  end
end