class CreatePortfolioSites < ActiveRecord::Migration
  def change
    create_table :portfolio_sites do |t|
      t.string :name
      t.text :description
      t.string :screenshot_url
      t.string :site_url
      t.integer :position

      t.timestamps
    end
  end
end
