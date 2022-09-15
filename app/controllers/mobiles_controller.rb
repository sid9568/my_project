class MobilesController < ApplicationController
  def index
    @mobiles = Mobile.all
  end

  def show
    @mobile = Mobile.find_by_id(params[:id])
  end

  def new
    @mobile = Mobile.new
  end

  def create
   if params[:title].present? and params[:body].present?
    img = params[:image].present? ? upload_image_on_cloud(params[:image],"Image") : ''
    p img
     @mobile = Mobile.create(logo:params[:logo],image:params[:image],processor:params[:processor],camera:params[:camera],display:params[:display],bettry_life:params[:bettry_life],)
     flash[:success] = "successfull"
      redirect_to  root_path
    end
    
  end

  def upload_image_on_cloud img_url,folder_name
    m = Cloudinary::Uploader.upload(img_url, :quality=>80,:folder => "/#{folder_name}/")
    url =m["url"]
  end


  def edit
  @mobile = Mobile.find_by_id(params[:id]) 
  p @Mobile
 end 


def update

   @mobile = Mobile.find_by_id(params[:id])
  p @mobile
  p"======================="
    if @mobile.update(logo:params[:logo],image:params[:image],processor:params[:processor],camera:params[:camera],display:params[:display],bettry_life:params[:bettry_life],)
      redirect_to root_path
      else
      render :edit, status: :unprocessable_entity
    end
  end  

  def destroy
    @mobile = Mobile.find(params[:id])
    @mobile.destroy
    redirect_to  root_path

  end
  

  private
    def Mobile_params
      params.require(:mobile).permit(:title, :body, :image)
    end
end