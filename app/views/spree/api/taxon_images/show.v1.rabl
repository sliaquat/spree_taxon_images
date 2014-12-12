object @taxon_image
attributes *image_attributes
Spree::TaxonImage.attachment_definitions[:attachment][:styles].each do |k,v|
  node("#{k}_url") { |i| i.attachment.url(k) }
end
