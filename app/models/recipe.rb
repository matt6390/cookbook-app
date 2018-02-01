class Recipe < ApplicationRecord
  belongs_to :user

  
  def friendly_prep_time

    hours = prep_time.to_i / 60 
    minutes = prep_time.to_i % 60
    time_string = ""
    
    time_string += "#{hours} #{"Hour".pluralize(hours)}" if hours > 0
    time_string += ", " if hours > 0 && minutes > 0
    time_string += "#{minutes} #{"Minutes".pluralize(minutes)}" if minutes > 0
    
  end

  def ingredients_list
    ingredients.split(", ")
  end
  
  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%m-%e-%y %H:%M")
  end

  def as_json
    {   #we will not include recipe., since we have al;ready called it outside of the method
      id: id,
      title: title,
      chef: chef, 
      ingredients: ingredients_list, #makes it so that the ingredients string is split eveytime that there is a ,"space"
      directions: directions_list,
      created_at: friendly_created_at,
      prep_time: friendly_prep_time
        }
    
  end


end









