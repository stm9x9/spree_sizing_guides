Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "sizing_guides_admin_configurations_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => "<%= configurations_sidebar_menu_item Spree.t(:sizing_guides), admin_sizing_guides_url %>",
                     :disabled => false)