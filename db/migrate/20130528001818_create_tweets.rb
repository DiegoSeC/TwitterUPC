class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :user
      t.string :url
      t.string :message

      t.timestamps
    end
  end
end
