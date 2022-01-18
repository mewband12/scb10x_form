class PartiesController < ApplicationController
  def new
    @party = Party.new
  end
  def create
    @party = Party.new(party_params)
    @party.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to root_path
  end

  private

  def party_params
    defaults = {current_member: "0"}
    params.require(:party).permit(:name, :max_member, :current_member).reverse_merge(defaults)
  end
end
