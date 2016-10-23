class InteractionsController < ApplicationController

  before_action :set_user
  before_action :set_interaction, only: [:show, :update, :destroy]

  # GET /interactions
  def index
    @interactions = @user.interactions.all

    render json: @interactions
  end

  # GET /interactions/1
  def show
    render json: @interaction
  end

  # POST /interactions
  def create
    @interaction = Interaction.new(interaction_params)

    if @user.interactions << @interaction
      render json: @interaction, status: :created, location: user_interactions_path(@user,@interaction)
    else
      render json: @interaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interactions/1
  # def update
  #   if @interaction.update(interaction_params)
  #     render json: @interaction
  #   else
  #     render json: @interaction.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /interactions/1
  # def destroy
  #   @interaction.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_interaction
    @interaction = @user.interactions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def interaction_params
    params.require(:interaction).permit(:integer, :string)
  end
end
