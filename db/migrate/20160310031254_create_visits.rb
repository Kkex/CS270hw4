class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.belongs_to :locations
      t.belongs_to :users
      t.timestamps null: false
    end
  end
end
