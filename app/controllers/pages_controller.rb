class PagesController < ApplicationController
  def about
    @welcome = 'bonjour à tous, vous etes pas frais ce matin!'
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
  end
  def home
  end
  def contact
     @members = ["thanh", "dimitri", "germain", "damien", "julien"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
