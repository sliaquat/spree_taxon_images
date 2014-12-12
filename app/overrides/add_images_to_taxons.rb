Deface::Override.new(virtual_path: "spree/admin/taxons/edit",
                     name: "add_images_to_taxons",
                     insert_before: "erb[silent]:contains('content_for :page_title')",
                     # :text => "<%= link_to_with_icon 'images', Spree.t(:images),admin_taxon_taxon_images_url(@taxon.id) %>",
                     :text => "<%= button_link_to Spree.t(:images),admin_taxon_taxon_images_url(@taxon.id), icon: 'image' %>"
                     # partial: "spree/admin/shared/cash_on_delivery_config_settings"
)
