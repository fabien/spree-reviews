Deface::Override.new(
  :virtual_path => "admin/configurations/index",
  :name => "reviews_admin_configurations_menu",
  :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
  :text => "<%= configurations_menu_item(t('spree_reviews.review_settings'), admin_review_settings_path, t('spree_reviews.manage_review_settings')) %>",
  :disabled => false)