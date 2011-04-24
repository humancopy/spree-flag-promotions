class CreatePromotedItems < ActiveRecord::Migration
  def self.up
    create_table :promoted_items do |t|
      t.string :description
      t.references :product
      t.date :start_date
      t.date :end_date
      t.integer :position

      t.string :background_file_name
      t.string :background_content_type
      t.integer :background_file_size
      t.datetime :background_updated_at

      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end

  def self.down
    drop_table :promoted_items
  end
end