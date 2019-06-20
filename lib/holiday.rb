# require 'pry'

holiday_supplies =
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
      :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
    :spring => {
      :memorial_day => ["BBQ"]
    }
  }

def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies << supply if holiday == :christmas || holiday == :new_years
    end 
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
 holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      supplies << supply if holiday == :memorial_day
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_supplies[season][holiday_name] = supply_array
  
  holiday_supplies

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  
  holiday_supplies[:winter].each do |holiday, supplies|
    winter_supplies << supplies
  end
  winter_supplies.flatten
end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_supplies.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      holiday = holiday.to_s.split('_').collect {|h| h.capitalize}.join(' ')
      supplies = supplies.join(', ')
      
      puts "  #{holiday}: #{supplies}"
    end    
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      # return key if value includes BBQ
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end 
  end
  bbq_holidays
end







