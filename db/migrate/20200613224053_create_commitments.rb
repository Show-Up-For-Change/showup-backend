class CreateCommitments < ActiveRecord::Migration[6.0]
  def change
    create_table :commitments do |t|
      t.belongs_to :user
      t.string :kind
      t.integer :amount
      t.string :frequency

      t.timestamps
    end
  end
end
