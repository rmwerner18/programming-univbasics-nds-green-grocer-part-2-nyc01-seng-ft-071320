require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  new_cart = consolidate_cart(cart)
  coupon_items = []
  coupons.each do |element|
    original_item = find_item_by_name_in_collection(element[:item], cart)
    coupon_item = {:item => element[:item], :price => element[:cost] / element[:num], :clearance => original_item[:clearance], :count => element[:num]}
    coupon_items << coupon_item
    binding.pry
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
