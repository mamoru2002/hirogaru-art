class AddPortfolioToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :portfolio, :boolean
  end
end
