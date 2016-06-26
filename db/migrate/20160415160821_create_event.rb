class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.references :user, index: true
      t.timestamps
    end
  end
end
