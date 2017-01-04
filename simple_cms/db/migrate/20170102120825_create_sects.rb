class CreateSects < ActiveRecord::Migration[5.0]
  def change
    create_table :sects do |t|
      def up
        create_table :sections do |t|
          t.integer "page_id"
          t.string "name"
          t.integer "position"
          t.boolean "visible", :default => false
          t.string "content_type"
          t.text "content"
          t.timestamps
        end
      end

      def down
        drop_table :sections
      end

    end
  end
end
