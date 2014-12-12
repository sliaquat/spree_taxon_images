Spree::Taxon.class_eval do
  has_many :taxon_images, class_name: "Spree::TaxonImage"


end