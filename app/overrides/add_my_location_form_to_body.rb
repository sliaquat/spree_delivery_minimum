Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "add_my_location_from_to_body",
                     :insert_bottom => "body",
                     :partial => "spree/shared/my_location_modal_form"
)