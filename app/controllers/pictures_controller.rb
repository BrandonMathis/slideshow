class PicturesController < ApplicationController
  def index
    @images = []
    %w(jpg JPG).each do |ext|
      @images += Dir.glob("public/images/*.#{ext}")
    end
    @images = @images.sort_by{ |f| File.ctime(f) }
    render :index
  end
end
