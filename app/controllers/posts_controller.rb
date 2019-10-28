class PostsController < ApplicationController
  def index
    @posts = post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post.update(title: params[:title], content: params[:content])

    redirect_to "/posts/#{@post.id}/show"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destoy

    redirect_to "/posts/index"
  end
end
