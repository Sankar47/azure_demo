class AddIdAndTokenToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :client_id, :integer
    add_column :clients, :client_token, :string
  end
end
