class MagazinesController < ApplicationController
	 respond_to do |format|
      format.html
    end

    gon.mag = Magazine.all

  end

end
