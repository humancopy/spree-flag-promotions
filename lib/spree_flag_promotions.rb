require 'spree_core'
require 'spree_flag_promotions_hooks'

module SpreeFlagPromotions
  def self.s3?
    @@use_s3
  end
  def self.s3=(flag)
    @@use_s3 = flag
  end
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
