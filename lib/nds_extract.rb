require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  directors_index = 0
  while directors_index < nds.count do
    current_director = nds[directors_index][:name]
    result[current_director] = gross_for_director(nds[directors_index])
    directors_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_index = 0
  total = 0
  while movies_index < director_data[:movies].count do
    total += director_data[:movies][movies_index][:worldwide_grosses]
    movies_index += 1
  end
  total
end
