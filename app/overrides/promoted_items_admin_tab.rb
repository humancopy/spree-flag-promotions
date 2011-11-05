Deface::Override.new(
  :virtual_path => "layouts/admin",
  :name => "flag_promotions_admin_layout",
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => %(<%= tab(:promoted_items) %>),
  :disabled => false
)
