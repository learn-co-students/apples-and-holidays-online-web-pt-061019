require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash [:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  nuarray = holiday_hash[:winter].values
  nuarray.each { |a| a << "Balloons" }
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  nuarray = holiday_hash[:spring].values.flatten
  nuarray<<supply
holiday_hash[:spring][:memorial_day] = nuarray

  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash[season]
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

 nu_array = []
 holiday_hash.each do |key, value|
   puts "#{key.capitalize}:"
   value.each do |holidays, supplies|
     nu_array = holidays.to_s.tr("_"," ").split
     puts "  #{nu_array.collect {|s| s.capitalize}.join(" ")}: #{supplies.join(", ")}"

     end
   end
end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
    nu_array = [ ]
    holiday_hash.each do |season, holiday|
     holiday.each do|values, supplies|
       if supplies.include?("BBQ")
      nu_array<<values
      end
    end
  end
  nu_array
end

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
