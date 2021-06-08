class CreateYfcases < ActiveRecord::Migration[6.1]
  def change
    create_table :yfcases do |t|
      t.string :yfcaseCaseNumber

      t.timestamps
    end
  end
end
