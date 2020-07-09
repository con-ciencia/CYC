class CreateFavoriteSubsidios < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_subsidios do |t|
      t.references :subsidio, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
