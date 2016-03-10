class CreateParticipates < ActiveRecord::Migration
  def change
    create_table :participates do |t|
      t.belongs_to :event
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
