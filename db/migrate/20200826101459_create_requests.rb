class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :text

      t.timestamps
    end
  end
end
