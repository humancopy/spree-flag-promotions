# flag_promotions/app/models/promoted_item.rb
class PromotedItem < ActiveRecord::Base
  belongs_to :product

  validates :product, :presence => true
  has_attached_file :background,
                :styles => { :normal => '990x530>' },
                :default_style => :normal,
                :url => "/assets/promoted_items/:id/bg/:style/:basename.:extension",
                :path => ":rails_root/public/assets/promoted_items/:id/bg/:style/:basename.:extension",
                :default_url => "/images/blank.png"
  has_attached_file :image,
                :styles => { :normal => '990x530>' },
                :default_style => :normal,
                :url => "/assets/promoted_items/:id/image/:style/:basename.:extension",
                :path => ":rails_root/public/assets/promoted_items/:id/image/:style/:basename.:extension",
                :default_url => "/images/blank.png"

  scope :valid, where('start_date <= :start_date AND end_date >= :end_date', {:start_date => Time.now, :end_date => Time.now})

  def name
    product.nil? ? 'ERR' : product.name
  end
end