require 'pry'

def find_item_by_name_in_collection(name, collection)
  result = nil
  collection.each do |item_info|
    if item_info[:item] == name 
      result = item_info
    end
  end
p result
#binding.pry
end



def consolidate_cart(cart)
  receipt = []
  cart.each do |item_info|
    individual_item = find_item_by_name_in_collection(item_info[:item], cart)
    individual_item[:count] = countnums(cart, individual_item[:item])
    receipt << individual_item
  end 
  receipt = receipt.uniq
#binding.pry
  return receipt
end 

def countnums(cart, item)
  array_of_names = []
  cart.each do |item_info|
    array_of_names << item_info[:item]
  end 
  countnum = array_of_names.count(item)
  return countnum
end 
  
#   countnums_array = []
#   cart.each do |item_info|
#     item_names << item_info[:item]
#     end 
# item_names.each do |name|
#   name_count = item_names.count(name)
#   countnums_array << {name => name_count}
#   end 
# binding.pry
# countnums_array
# end 
  
    
#def count_item(cart, item)
  #intended to count instances of a given item in cart and return countnum
    
    
    
    
    
    
    
#     item_names << item_info[:item]
#   end 
#   item_names.each do |name|
#     name_count = item_names.count(name)
#     aoh_item_counts << {name=> {:count => name_count}}
#   end
# aoh_item_counts
# end 
 
 
 
 #cart [:count = [countname]
 
#   aoh_item_counts.each do |itemcount_hash|
#     itemcount_hash.each do |key, value|
#       item_info_hash = find_item_by_name_in_collection(key, cart)
#       item_info_hash << value
#     end 
#   end 
#   item_info_hash
#   binding.pry
# end 
  
  #match up item count with each item and then add to a new array
  
  
    


  
  
#   final_results = cart.each_with_object({}) do |(key, value), final_array|
#     value.each do |inner_key, names|
#       names.each do |name|
#         if !final_array[name]
#           final_array[name] = {}
#         end 
#         if !final_array[name][key]
#           !final_array[name][key] = []
#         end 
#         final_array[name][key].push(inner_key.to_s)
#         binding.pry
#       end 
#     end 
#   end 
# end 
  
  
    
    
    
#   binding.pry


# end

# The consolidate_cart method should do something similar - it should take in a 'cart', an array of hashes of individual items and return a new array of hashes, but with each item containing a quantity. So, for example, given the following cart:

  