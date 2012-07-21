Deface::Override.new(
  :virtual_path => "spree/layouts/admin",
  :name => "flag_promotions_admin_layout",
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => %(<%= tab(:promoted_items) %>),
  :disabled => false,
  :original => 'b14b1b16ac8937f99956ffef65de6f9c579ed1aa' 
)
