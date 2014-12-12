class CreateSpreeTaxonImages < ActiveRecord::Migration
  def change
    create_table :spree_taxon_images do |t|
      t.references :taxon
      t.timestamps
    end
  end
end
