class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :topic
      t.references :user

      t.timestamps
    end
  end
end
