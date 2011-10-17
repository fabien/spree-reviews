# Place this in your local lib/site_hooks.rb file to include the partial
# on the products/show page.
#
# Deface::Override.new(
#   :virtual_path => "products/show",
#   :name => "reviews_after_product_properties",
#   :insert_after => "[data-hook='product_properties'], #product-properties[data-hook]",
#   :partial => "shared/reviews",
#   :disabled => false)
