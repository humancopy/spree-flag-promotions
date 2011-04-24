Product.class_eval do
  has_one :promotion, :class_name => "PromotedItem"
  def image_for(name)
    self.images_for(name).first
  end

  def images_for(name)
    self.images.where(:attachment_file_name => "#{name.to_s.sub('_', '-')}.png")
  end

  def title
    self.title1 && self.title2 ? [self.title1, self.title2].join(', ') : (self.title || self.name)
  end

  def main_taxon
    @_main_taxon ||= taxons.first unless taxons.blank?
  end
  def design_taxon
    @_design_taxon ||= taxons.second unless taxons.blank?
  end

  def more_products_with_this_design
    @_more_products_with_this_design ||= self.design_taxon.products.reject { |x| x == self } unless self.design_taxon.blank?
  end
end