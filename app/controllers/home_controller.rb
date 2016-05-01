class HomeController < ApplicationController
  def index
  	@posts = Gesipan.all.reverse
  end
  def write_post
  end
  def write
   post = Gesipan.new
   post.title = params[:title]
   post.content = params[:content]
   post.save

   redirect_to "/home/index"
  end
  def gul
  	@one_post = Gesipan.find(params[:post_id])
    
  end

  def update_view
  	@one_post = Gesipan.find(params[:post_id])
  
  end
  def update
  	one_postic = Gesipan.find(params[:post_id])
  	one_postic.title = params[:title]
  	one_postic.content = params[:content]
  	one_postic.save
  	redirect_to "/home/index"
  	
  end
  def destroy
  	@one_post = Gesipan.find(params[:post_id])
  	@one_post.destroy
  	redirect_to "/home/index"
  end
  def reply_write
    @reply = Reply.new
    @reply.content = params[:content]
    @reply.gesipan_id = params[:post_id]
    @reply.save
    redirect_to :back
  end
end
