class PicturesController < ApplicationController
  def index
    @images = []
    %w(jpg JPG).each do |ext|
      @images += Dir.glob("public/images/*.#{ext}")
    end
  end
end
