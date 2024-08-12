class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["claire", "dimitri", "sarah", "emre"]
    if params[:member] # if you typed anything
      @members = @members.select do |member|
        member.starts_with?(params[:member])
      end
    end
  end
end
