# flag_promotions/app/models/promoted_item.rb
class PromotedItem < ActiveRecord::Base
  belongs_to :product

  validates :product, :presence => true

  has_attached_file :background,
                    :styles => { :normal => '990x530>' },
                    :default_style => :normal,
                    :path => SpreeFlagPromotions.s3? ? 'assets/products/:id/bg/:style/:basename.:extension' : ':rails_root/public/assets/products/:id/bg/:style/:basename.:extension',
                    :url => '/assets/products/:id/bg/:style/:basename.:extension',
                    :storage => SpreeFlagPromotions.s3? ? 's3' : 'filesystem',
                    :s3_credentials => SpreeFlagPromotions.s3_yml_file,
                    :default_url => "/images/blank.png"
  has_attached_file :image,
                    :styles => { :normal => '990x530>' },
                    :default_style => :normal,
                    :path => SpreeFlagPromotions.s3? ? 'assets/products/:id/image/:style/:basename.:extension' : ':rails_root/public/assets/products/:id/image/:style/:basename.:extension',
                    :url => '/assets/products/:id/image/:style/:basename.:extension',
                    :storage => SpreeFlagPromotions.s3? ? 's3' : 'filesystem',
                    :s3_credentials => SpreeFlagPromotions.s3_yml_file,
                    :default_url => "/images/blank.png"


  scope :valid, where('start_date <= :start_date AND end_date >= :end_date', {:start_date => Time.now, :end_date => Time.now})
  scope :sorted, order(:position)

  def name
    product.nil? ? 'ERR' : product.name
  end
end