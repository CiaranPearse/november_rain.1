class CreateCusinesCusines < ActiveRecord::Migration
  def change
    create_table :cusines_cusines do |t|
      t.belongs_to :cusine, index: true
      t.belongs_to :cusine, index: true
    end
  end
end
