class AddPositionToExistingTaxonImagesSpreeTaxonImages < ActiveRecord::Migration
  def change
    Spree::TaxonImage.all.each do |taxon_image|
      taxon_image.update(position: 0)
    end
  end
end
