object @taxon
attributes *taxon_attributes
child(:taxon_images => :taxon_images) { extends "spree/api/taxon_images/show" }

node do |t|
  child t.children => :taxons do
    attributes *taxon_attributes
    child(:taxon_images => :taxon_images) { extends "spree/api/taxon_images/show" }
  end
end
