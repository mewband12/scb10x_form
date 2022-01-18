class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @parties = Party.all
    @participate = Participate.new
    @participates = Participate.all

    @parties.each do |party|
      party.current_member = count_party(party.id)
      party.save
    end

  end

  def count_party(par_id)
    count = 0
    @participates.each do |participate|
      if (participate.party_id == par_id)
        count += 1
      end
    end
    return count
  end
end
