class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :title
      t.string :url
      t.string :notes
      t.belongs_to :user

      t.timestamps
    end
  end
end
