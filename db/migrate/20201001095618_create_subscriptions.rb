class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :stripe_id
      t.string :stripe_plan
      t.string :status
      t.datetime :trial_ends_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end