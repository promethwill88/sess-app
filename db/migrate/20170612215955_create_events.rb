class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.time :time
      t.string :address
      t.string :host

      t.timestamps
    end
  end
end
