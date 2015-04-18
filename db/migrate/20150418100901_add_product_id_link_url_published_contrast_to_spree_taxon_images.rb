class AddProductIdLinkUrlPublishedContrastToSpreeTaxonImages < ActiveRecord::Migration
  def change
    add_column :spree_taxon_images, :name, :string
    add_column :spree_taxon_images, :body, :string
    add_column :spree_taxon_images, :super_text, :string
    add_column :spree_taxon_images, :button_name, :string
    add_column :spree_taxon_images, :product_id, :integer
    add_column :spree_taxon_images, :position, :integer, :null => false, :default => 0
    add_column :spree_taxon_images, :link_url, :string
    add_column :spree_taxon_images, :published, :boolean, :default => true
    add_column :spree_taxon_images, :dark, :boolean, :default => false

    add_index :spree_taxon_images, :position
    add_index :spree_taxon_images, :dark
    add_index :spree_taxon_images, :published

  end
end
