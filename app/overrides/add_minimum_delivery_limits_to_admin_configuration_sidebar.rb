Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'add_minimum_delivery_limits_to_admin_configurations_menu',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<%= configurations_sidebar_menu_item Spree.t(:minimum_delivery_limits), admin_delivery_cities_path %>'
)
