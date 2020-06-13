class CreateCommitments < ActiveRecord::Migration[6.0]
  def change
    create_table :commitments do |t|
      t.has_many :user
      t.string :type
      t.integer :amount
      t.string :frequency

      t.timestamps
    end
  end
end
