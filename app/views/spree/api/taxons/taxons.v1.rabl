node do |t|
  child t.children => :taxons do
    attributes *taxon_attributes

    child(:taxon_images => :taxon_images) { extends "spree/api/taxon_images/show" }

    attributes :id, :title, :subject
    extends "spree/api/taxons/taxons"
  end
end
