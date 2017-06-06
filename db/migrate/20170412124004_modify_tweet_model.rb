class ModifyTweetModel < ActiveRecord::Migration[5.0]
  def change
  	rename_column :tweets, :User, :user_id
  	rename_column :tweets, :Body, :body
  end
end
