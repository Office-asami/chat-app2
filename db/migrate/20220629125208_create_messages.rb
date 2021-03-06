class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string  :content
      t.timestamps
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
