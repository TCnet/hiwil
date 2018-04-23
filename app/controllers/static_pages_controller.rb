class StaticPagesController < ApplicationController

  include AlbumsHelper

  
  def home
    @users = User.where(activated: true).order(:id).take(8)
    
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])

    end
  end

  def help
    @colors = %w{KH LK DK BG BL BE LB DB NB SB BZ BR CO LC DC CT GD GR AG LN DN GY LG DG MT MC OW OR DO LO RO PI LP DP PE LE DE RE DR LR WR MR SL TT TE WH YE LY DY GM NM KM YM BM LM DM KM iv}
  end

  def about
  end

  def contact
  end
end
