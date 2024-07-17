class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name,:text,:image)
  end
end
