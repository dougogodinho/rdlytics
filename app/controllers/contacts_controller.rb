class ContactsController < ApplicationController

  before_action :set_user
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    @contacts = @user.contacts.all

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    if @user.contacts << @contact

      render json: @contact, status: :created, location: user_contact_url(@user, @contact)
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  # def update
  #   if @contact.update(contact_params)
  #     render json: @contact
  #   else
  #     render json: @contact.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /contacts/1
  # def destroy
  #   @contact.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_contact
    @contact = Contact.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def contact_params
    params.require(:contact).permit(:email)
  end
end
