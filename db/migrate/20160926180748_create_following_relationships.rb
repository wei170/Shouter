class CreateFollowingRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :following_relationships do |t|
      t.belongs_to :follower, foreign_key: true
      t.belongs_to :followed_user, foreign_key: true

      t.timestamps
    end
    # add_index :following_relationships, :follower_id
    # add_index :following_relationships, :followed_user_id
  end
end
