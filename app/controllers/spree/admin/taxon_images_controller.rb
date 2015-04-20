class Spree::Admin::TaxonImagesController < Spree::Admin::ResourceController


  def index
    @taxon = Spree::Taxon.find(params[:taxon_id])
    @taxonomy = @taxon.taxonomy
  end

  def new
    @taxon = Spree::Taxon.find(params[:taxon_id])
    @taxon_image = Spree::TaxonImage.new()
  end


  def edit
    @taxon = Spree::Taxon.find(params[:taxon_id])
    @taxon_image = @taxon.taxon_images.find_by(id: params[:id])
  end

  def update

    @taxon_image = Spree::TaxonImage.find(taxon_image[:id])

    if(@taxon_image.update(taxon_image))
      flash[:success] = "Successfully updated taxon image"
    else
      flash[:error] = "Error updating taxon image"
    end

    redirect_to admin_taxon_taxon_images_url(params["taxon_image"]["taxon_id"])
  end

  def create

    @taxon_image = Spree::TaxonImage.new(taxon_image)

    if(@taxon_image.save)
      flash[:success] = "Successfully saved taxon image"

    else
      flash[:error] = "Error creating taxon image"

    end

    redirect_to admin_taxon_taxon_images_url(params["taxon_image"]["taxon_id"])
  end



  private

  def taxon_image
    params.require(:taxon_image).permit(:attachment, :alt, :taxon_id, :id, :name, :super_text, :button_name, :link_url, :position, :product_id, :dark, :published)
  end

end
