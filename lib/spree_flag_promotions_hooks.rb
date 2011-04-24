class SpreeFlagPromotionsHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  insert_after :admin_tabs do
    %(<%= tab(:promoted_items) %>)
  end
end