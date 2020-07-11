require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
 new_cart = consolidate_cart(cart)
 new_cart.each do |item|
   coupons.each do |coupon|
     if item[:item] == coupon[:item] && item[:count] >= coupon[:num] && item[:price]*item[:count] != coupon[:cost]
       discount_item = find_item_by_name_in_collection(item[:item], cart)
       discount_item[:count] = coupon[:num]
       discount_item[:price] = coupon[:cost] / coupon[:num]
       cart << discount_item
       binding.pry
        if item[:count] > coupon[:num]
          item[:count] = item[:count] - coupon[:num]
        else cart - item
        end
      end
    end
  end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
