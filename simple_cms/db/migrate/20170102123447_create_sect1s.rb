class CreateSect1s < ActiveRecord::Migration[5.0]
  def change
    create_table :sect1s do |t|
      t.string   "name"
      t.integer "page_id"
      t.integer "position"
      #t.boolean "visible", :default => false
      #t.string "content_type"
      #t.text "content"
      #t.timestamps
    end
  end
  end

