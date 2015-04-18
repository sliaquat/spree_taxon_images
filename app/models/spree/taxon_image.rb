
class Spree::TaxonImage < ActiveRecord::Base
  acts_as_list

  belongs_to :taxon, class_name: "Spree::Taxon"

  has_attached_file :attachment,
                    styles: { mini: '48x48>', small: '100x100>', product: '240x240>', large: '600x600>' },
                    default_style: :product,
                    url: '/spree/taxons/:id/:style/:basename.:extension',
                    path: ':rails_root/public/spree/taxons/:id/:style/:basename.:extension',
                    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
  validates_attachment :attachment,
                       :presence => true,
                       :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }


  def taxon_image_link
    link_url.blank? && product ? product : link_url
  end

  def taxon_image_name
    name.blank? && product ? product.name : name
  end


  def product
    product_id.present? ? Spree::Product.find(product_id) : nil
  end


end
