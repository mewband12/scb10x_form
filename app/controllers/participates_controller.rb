class ParticipatesController < ApplicationController
  def create
    @parties = Party.all
    @participate = Participate.new
    @participate.user_id = current_user.id
    party_id = params["participate"]["holder"]
    @participate.party_id = party_id
    @participate.participation = "TRUE"
    if (Participate.all.where(party_id: party_id).where(user_id: current_user.id)).empty?
      if @parties.where(id: party_id)[0].current_member.to_i < @parties.where(id: party_id)[0].max_member.to_i
        if @participate.save
          redirect_to root_path
        else
          redirect_to root_path, alert: "Cannot join party . #{@participate.errors.full_messages.join(', ')}."
        # no need for app/views/restaurants/create.html.erb
        end
      else
        redirect_to root_path, alert: "Cannot exceed maximum of #{@parties.where(id: party_id)[0].max_member.to_i} members."
      end
    else
      redirect_to root_path, alert: "You have already joined the party, you cannot join again"
    end
  end

  private

  def participate_params
    params.require(:holder).permit(:holder)
  end
end
