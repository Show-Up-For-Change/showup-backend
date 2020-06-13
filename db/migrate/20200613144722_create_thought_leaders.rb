class CreateThoughtLeaders < ActiveRecord::Migration[6.0]
  def change
    create_table :thought_leaders do |t|
      t.string :handle
      t.string :image_url
      t.string :link_url

      t.timestamps
    end
  end
end
