# flag_promotions/app/controllers/admin/promoted_items_controller.rb
class Spree::Admin::PromotedItemsController < Spree::Admin::ResourceController
  

  def update_positions
    params[:positions].each do |id, index|
      PromotedItem.update_all(['position=?', index], ['id=?', id])
    end
    
    respond_to do |format|
      format.html { redirect_to admin_promoted_items_url }
      format.js  { render :text => 'Ok' }
    end
  end
  # 
  # private
  # def collection
  #   @collection ||= PromotedItem.order(:position)
  # end
end

