class ContactsController < ApplicationController

  respond_to :json

  # GET /contacts(.json)
  def index
    @contacts = Contact.includes(:emails, :phone_numbers, :address).to_a
    respond_with @contacts
  end

  # GET /contacts/:id(.json)
  def show
    @contact = Contact.find params[:id]
    respond_with @contact
  end

end
