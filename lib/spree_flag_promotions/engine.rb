module SpreeFlagPromotions
  class << self
    def s3?
      @@use_s3 ||= !!s3_options
    end
    def s3_options
      @@s3_options ||= YAML.load(File.open(s3_yml_file))[Rails.env]
    end
    def s3_app_file
      @@app_s3_file ||= File.join(Rails.root,'config', 's3.yml')
    end
    def s3_ext_file
      @@ext_s3_file ||= File.join(File.dirname(__FILE__), '..', '..', 'config', 's3.yml')
    end
    def s3_yml_file
      @@yml_file ||= File.exists?(s3_app_file) ? s3_app_file : s3_ext_file
    end
  end

  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_flag_promotions'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
