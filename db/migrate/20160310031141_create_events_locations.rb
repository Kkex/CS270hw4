class CreateEventsLocations < ActiveRecord::Migration
  def change
    create_table :events_locations do |t|
      t.string :name
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :events
      t.belongs_to :locations
    end
  end
end
