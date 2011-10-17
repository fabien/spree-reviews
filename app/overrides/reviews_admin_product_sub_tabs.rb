Deface::Override.new(
  :virtual_path => "admin/shared/_product_sub_menu",
  :name => "reviews_admin_product_sub_tabs",
  :insert_bottom => "[data-hook='admin_product_sub_tabs'], #admin_product_sub_tabs[data-hook]",
  :text => "<%= tab(:reviews, :label => 'review_management') %>",
  :disabled => false)