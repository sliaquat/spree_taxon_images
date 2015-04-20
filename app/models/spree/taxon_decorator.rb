Spree::Taxon.class_eval do
  has_many :taxon_images, class_name: "Spree::TaxonImage"


  def published_taxon_images
    taxon_images.where("published = true")
  end


  def self.taxon_with_published_taxon_images
    Spree::Taxon.all.select { |taxon| taxon.published_taxon_images.count > 0 }
  end


end