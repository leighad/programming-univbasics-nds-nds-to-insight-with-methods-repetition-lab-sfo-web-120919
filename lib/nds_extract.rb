$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
<<<<<<< HEAD
  names = []
  
  source.each do | person |
    person.each do | k, v |
      names << v 
    end
  end
  
  names 
=======
  # Write this implementation
  names = []
  
  source.each do | key, value |
    names << key
    
    names.each do | key, value |
      names << value 
    end
    
    # names.each do | key, value |
    #   names << key[value]
    # end
    
  end
  names
  
>>>>>>> 0ae7b6da53779837af0a5e6f24ae0461fb938cd6
end

def total_gross(source)
  # Use:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  totals = 0 

  source.each do | director |
    totals += gross_for_director(director)
  end 
  
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  totals 
end


