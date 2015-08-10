class MunicipalitiesController < ApplicationController
  before_action :set_municipality, only: [:show, :edit, :update, :destroy]



  def index
     

      @present = params[:state_id]  
      @dropdown = State.all

      @municipality = Municipality.order(:name)
      @count = @municipality.count
      if params[:state_id].present?

       @state = params[:state_id]
       @state_name = State.find(@state)
       @municipalities = Municipality.where(state_id: @state)
       @forms = Form.where(municipality_id: @municipalities)
       
       @count_state = @municipalities.count
     else
       @forms = nil
       @state = State.all
       @municipalities = Municipality.order(:name)

     end
     
   end

  def show

  end

  def sort_order(population)
      "#{(params[:c] || population.to_s).gsub(/[\s;'\"]/,'')} #{params[:d] == 'down' ? 'DESC' : 'ASC'}"
  end

  def new
  
      @municipality = Municipality.new


    
    #@state = Municipality::STATE
  end

  def edit
  end

  def create

    @municipality = Municipality.new(municipality_params)

    respond_to do |format|
      if @municipality.save
        format.html { redirect_to @municipality, notice: 'Municipality was successfully created.' }
        format.json { render :show, status: :created, location: @municipality }
        flash[:notice] = 'Municipality was successfully created.'
      else
        format.html { render :new }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
        flash[:alert] = @municipality.errors
      end
    end
  end


  def update
    respond_to do |format|
      if @municipality.update(municipality_params)
        format.html { redirect_to @municipality, notice: 'Municipality was successfully updated.' }
        format.json { render :show, status: :ok, location: @municipality }
        flash[:notice] = 'Municipality was successfully updated.'
      else
        format.html { render :edit }
        format.json { render json: @municipality.errors, status: :unprocessable_entity }
        flash[:alert] = @municipality.errors
      end
    end
  end

  def destroy
    @municipality.destroy
    respond_to do |format|
      format.html { redirect_to municipalities_url, notice: 'Municipality was successfully destroyed.' }
      format.json { head :no_content }
      flash[:notice] = 'Municipality was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipality
      @municipality = Municipality.find(params[:id])
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def municipality_params
      params.require(:municipality).permit(:name, :state_id, :population)
    end


end
