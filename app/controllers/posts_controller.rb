class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC")
  end
  
  def new
    @post = Post.new
  end

  def create
    
  end

  def  show
    @post = Post.find(params[:id])
    @member = Member.find(@post.member_id)
  end

end
