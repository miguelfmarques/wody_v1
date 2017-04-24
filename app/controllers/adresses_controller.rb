class AdressesController < ApplicationController

  before_action :set_address, only: [:show, :edit, :update, :destroy]#, :authenticate_user!

  # GET /legal_people
  # GET /legal_people.json
  def index
    @adresses = Address.all
  end

  # GET /legal_people/1
  # GET /legal_people/1.json
  def show
  end

  # GET /legal_people/new
  def new
    @address = Address.new
    #@legal_person.build_person
  end

  # GET /legal_people/1/edit
  def edit
  end

  # POST /legal_people
  # POST /legal_people.json
  def create
    @address = Address.find(params[:address_id])
    #@legal_person = LegalPerson.new(legal_person_params)
    #@legal_person.person = @person

    respond_to do |format|
      if @address.save
        format.html { redirect_to @address, notice: 'Legal person was successfully created.' }
        format.json { render :show, status: :created, location: @address }
      else
        format.html { render :new }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legal_people/1
  # PATCH/PUT /legal_people/1.json
  def update
    respond_to do |format|
      if @legal_person.update(legal_person_params)
        format.html { redirect_to @address, notice: 'Legal person was successfully updated.' }
        format.json { render :show, status: :ok, location: @address }
      else
        format.html { render :edit }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legal_people/1
  # DELETE /legal_people/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to adresses_url, notice: 'Legal person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_address
    @address = Address.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def address_params
    params.require(:address).permit(:endereco, :numero, :complemento, :bairro, :cep, :references)
  end

end
