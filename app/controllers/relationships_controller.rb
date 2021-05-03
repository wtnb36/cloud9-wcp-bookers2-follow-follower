class RelationshipsController < ApplicationController
  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to request.referer
  end
  
  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to request.referer
  end
  
  def follow
    user = User.find(params[:id])
    current_user.follow(user)
    redirect_to request.referer
  end

  def unfollow
    user = User.find(params[:id])
    current_user.unfollow(user)
    redirect_to request.referer
  end
end
