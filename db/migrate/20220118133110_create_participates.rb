class CreateParticipates < ActiveRecord::Migration[6.1]
  def change
    create_table :participates do |t|
      t.references :user, null: false, foreign_key: true
      t.references :party, null: false, foreign_key: true
      t.string :participation

      t.timestamps
    end
  end
end
