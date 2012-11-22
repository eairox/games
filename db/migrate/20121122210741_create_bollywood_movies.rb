class CreateBollywoodMovies < ActiveRecord::Migration
  def change
    create_table :bollywood_movies do |t|
      t.string :name

      t.timestamps
    end
  end
end
