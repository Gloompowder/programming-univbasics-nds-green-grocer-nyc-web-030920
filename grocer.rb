require 'pry' 
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  index = 0
  while index < collection.length do
    if name == collection[index][:item]
      return collection[index]
    end 
    index += 1
  end
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
#   new_array = []
#   index = 0 
#   while index < cart.length do
#     binding.pry
#     (cart[index][:count] = 1)
#     if car[index][:item] != 
#     else
#       cart[index][:count] += 1
#     new_array << cart[index]
#     end 
#   index += 1
#   end
# new_array
  new_array = []
  counter = 0 
  while counter < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_array)
    if new_cart_item != nil
      new_cart_item[:count] += 1
    else
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      new_array << new_cart_item
    end
    counter += 1
  end
  new_array
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  counter = 0 
  while counter < coupons.length do 
    cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart) 
    coupon_item_name = #{
    counter += 1
  end  
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
