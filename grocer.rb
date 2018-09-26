require 'pry'
def consolidate_cart(cart)
  haxh = {}
  cart.each do |food|
    item = food.keys[0]
    haxh[item] = food.values[0]
    if haxh[item][:count]
      haxh[item][:count] += 1 
    else
      haxh[item][:count] = 1 
    end
  end
  haxh
end

def apply_coupons(cart:[], coupons:[])
  new_cart = {}
  
  cart.each do |food_item, info_hash|
    new_cart[food_item] = info_hash
    
    coupons.each do |coupon_hash|
      
      if food_item == coupon_hash[:item]
        
        if info_hash[:count] >= coupon_hash[:num]
          info_hash[:count] -= coupon_hash[:num]
          
          if new_cart.include?(food_item+" W/COUPON")
            new_cart[food_item+" W/COUPON"][:count] += 1
          else
            new_cart[food_item+" W/COUPON"] = {
                :price => coupon_hash[:cost],
                :clearance => info_hash[:clearance],
                :count => 1
            }
          end
        end
      end
    end
  end
   new_cart
end	

# def apply_coupons(cart:[], coupons:[])
#   haxh = {}
#   cart.each do |key,value|
#     haxh[key] = value
#     coupons.each do |coupon|
#       if key == coupon[:item]
#         if value[:count] >= coupon[:num]
#           value[:count] -= coupon[:num]
#         if haxh.include?(key + "W/COUPON")
#           haxh[key + "W/COUPON"] += 1 
#         else
#           haxh[key + "W/COUPON"] = {
#             :price => [coupon][:cost],
#             :clearance => [value][:clearance],
#             :count => 1
#           }
#           end
#         end
#       end
#     end
#   end
#     haxh
# end

# def apply_clearance(cart)
#   # code here
# end

# def checkout(cart, coupons)
#   # code here
# end
