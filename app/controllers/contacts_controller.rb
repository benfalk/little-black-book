class ContactsController < ApplicationController

  respond_to :json

  # GET /contacts(.json)
  def index
    @contacts = Contact.all
    respond_with @contacts
  end

  # GET /contacts/:id(.json)
  def show
    @contact = Contact.find params[:id]
    respond_with @contact
  end

end
