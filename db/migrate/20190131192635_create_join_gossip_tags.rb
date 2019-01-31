class CreateJoinGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :join_gossip_tags do |t|
			t.belongs_to :tag
      t.belongs_to :gossip
      t.timestamps
    end
  end
end
