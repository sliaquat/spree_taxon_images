class Spree::Admin::TaxonImagesController < Spree::Admin::ResourceController


  def index
    @taxon = Spree::Taxon.find(params[:taxon_id])
    @taxonomy = @taxon.taxonomy
  end

  def new

    @taxon = Spree::Taxon.find(params[:taxon_id])
    @taxon_image = Spree::TaxonImage.new()

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
    params.require(:taxon_image).permit(:attachment, :alt, :taxon_id)
  end

end
