class PostsController < ApplicationController
  
  before_action :authenticate_member!, except: [:index, :show]


  def index
    @posts = Post.all.order("created_at DESC")
  end
  
  def new
    @post =  current_member.posts.build
  end

  def create
    @post =  current_member.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def  show
    @post = Post.find(params[:id])
    @member = Member.find(@post.member_id)
  end


  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
