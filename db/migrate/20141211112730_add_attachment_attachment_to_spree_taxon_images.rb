class AddAttachmentAttachmentToSpreeTaxonImages < ActiveRecord::Migration
  def self.up
    change_table :spree_taxon_images do |t|
      t.attachment :attachment
    end
  end

  def self.down
    remove_attachment :spree_taxon_images, :attachment
  end

end
