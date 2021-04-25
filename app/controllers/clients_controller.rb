class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params[:client])
    @client.client_id = Client.last.id + 1
    @client.client_token = Array.new(256){[*"A".."Z", *"0".."9"].sample}.join
    if @client.save
      redirect_to clients_index_path, alert: "Client created successfully."
    else
      redirect_to clients_new_path, alert: "Error creating user."
    end
  end
  
end
