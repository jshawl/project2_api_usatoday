class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :place
      t.text :flickr_id

      t.timestamps null: false
    end
  end
end
