class PicturesController < ApplicationController
  def index
    @images = []
    %w(jpg JPG).each do |ext|
      @images += Dir.glob("app/assets/images/*.#{ext}")
    end
  end
end
