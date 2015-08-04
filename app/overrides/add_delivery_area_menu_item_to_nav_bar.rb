Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "add_my_location_header_nav",
                     :insert_after => "#shop-by",
                     :text => %! <%if Spree::DeliveryArea.any?%><li id="delivery-area-top-link" data-hook><%= link_to "Delivery Area", '#' %></li> <%end%>!
)