class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.string :max_member
      t.string :current_member

      t.timestamps
    end
  end
end
