class CreateTeams < ActiveRecord::Migration[8.0]
  def change
    create_table :teams do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
