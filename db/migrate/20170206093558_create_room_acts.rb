class CreateRoomActs < ActiveRecord::Migration[5.0]
  def change
    create_table :room_acts do |t|
      t.string :Name
      t.integer :Amount
      t.string :Desc
      t.date :Time

      t.timestamps
    end
  end
end
