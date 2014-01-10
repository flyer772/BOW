class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string "city"
      t.string "river"
      t.string "school_name"
      t.string "school_address"
      t.string "contact_name"
      t.string "contact_title"
      t.string "contact_email"
      t.integer "phone_num"
      t.text "paragraph"
      
      t.timestamps
    end
  end
end
