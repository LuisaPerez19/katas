# 1. Needs to display message when empty
# 2. if not empty then iterates over the names on the array and displays them or display a string of arrays in one line

def likes(names)
  case names.length
  when 0 then "no one likes this"
  when 1 then "#{names.first} likes this"
  when 2 then "#{names.join(' and ')} like this"
  when 3 then "#{names.first(2).join(', ')} and #{names.last} like this"
  else
    "#{names.first(2).join(', ')} and #{names.length - 2} others like this"
  end
end

names = ["Alex", "Jacob", "Mark", "Max", "Luisa"]
puts likes(names)

# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:
# # []                                -->  "no one likes this"
# ["Peter"]                         -->  "Peter likes this"
# ["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
# ["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
# ["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"
