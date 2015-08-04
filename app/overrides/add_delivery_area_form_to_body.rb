Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "add_delivery_area_form_to_body",
                     :insert_bottom => "body",
                     :partial => "spree/shared/delivery_area_modal_form"
)

# Deface::Override.new(:virtual_path => "spree/products/_cart_form",
#                      :name => "add_my_location_from_to_cart_form",
#                      :insert_after => "erb[silent]:contains('end')",
#                      :partial => "spree/shared/my_location_modal_form"
# )