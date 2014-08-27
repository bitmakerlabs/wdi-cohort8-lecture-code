class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.integer :year
      t.text :synopsis

      t.timestamps
    end
  end
end
