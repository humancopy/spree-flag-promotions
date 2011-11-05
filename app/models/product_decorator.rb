Product.class_eval do
  has_one :promotion, :class_name => 'PromotedItem'
end