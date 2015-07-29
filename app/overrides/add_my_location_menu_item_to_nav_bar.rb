Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "add_my_location_header_nav",
                     :insert_after => "#shop-by",
                     :text => %! <%if Spree::DeliveryArea.any?%><li id="my-locaiton-link" data-hook><%= link_to "My Location", '#' %></li> <%end%>!
)