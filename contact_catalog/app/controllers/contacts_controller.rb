class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    # # Render json objects
    # render :json => @contacts
  end

  def show
    @contact = Contact.find(params[:id])
    # # Render json objects
    # render :json => @contact
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update_attributes(contact_params)
      redirect_to contact_path
    else
      render :edit
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :age, :phone_number,
    :email, :computer_languages, :pets)
  end

end
