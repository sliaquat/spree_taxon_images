
class Spree::TaxonImage < ActiveRecord::Base

  belongs_to :taxon, class_name: "Spree::Taxon"

  has_attached_file :attachment,
                    styles: { mini: '48x48>', small: '100x100>', medium: '240x240>', large: '600x600>' },
                    default_style: :product,
                    url: '/spree/taxons/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
  validates_attachment :attachment,
                       :presence => true,
                       :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

end
