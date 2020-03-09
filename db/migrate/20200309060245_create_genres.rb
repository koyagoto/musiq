class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|

      t.string :jpop
      t.string :soul
      t.string :jazz
      t.string :dance
      t.string :alternative
      t.string :classic
      t.string :hiphop
      t.string :rock
      t.string :reggae

      t.timestamps
    end
  end
end
