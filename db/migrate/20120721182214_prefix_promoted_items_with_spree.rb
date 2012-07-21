class PrefixPromotedItemsWithSpree < ActiveRecord::Migration
  def up
  	rename_table :promoted_items, :spree_promoted_items
  end

  def down
  end
end
