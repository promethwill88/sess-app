class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
