class PizzaTiposController < ApplicationController
  # GET /pizza_tipos
  # GET /pizza_tipos.json
  def index
    @pizza_tipos = PizzaTipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pizza_tipos }
    end
  end

  # GET /pizza_tipos/1
  # GET /pizza_tipos/1.json
  def show
    @pizza_tipo = PizzaTipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pizza_tipo }
    end
  end

  # GET /pizza_tipos/new
  # GET /pizza_tipos/new.json
  def new
    @pizza_tipo = PizzaTipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pizza_tipo }
    end
  end

  # GET /pizza_tipos/1/edit
  def edit
    @pizza_tipo = PizzaTipo.find(params[:id])
  end

  # POST /pizza_tipos
  # POST /pizza_tipos.json
  def create
    @pizza_tipo = PizzaTipo.new(params[:pizza_tipo])

    respond_to do |format|
      if @pizza_tipo.save
        format.html { redirect_to @pizza_tipo, notice: 'Pizza tipo was successfully created.' }
        format.json { render json: @pizza_tipo, status: :created, location: @pizza_tipo }
      else
        format.html { render action: "new" }
        format.json { render json: @pizza_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pizza_tipos/1
  # PUT /pizza_tipos/1.json
  def update
    @pizza_tipo = PizzaTipo.find(params[:id])

    respond_to do |format|
      if @pizza_tipo.update_attributes(params[:pizza_tipo])
        format.html { redirect_to @pizza_tipo, notice: 'Pizza tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pizza_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza_tipos/1
  # DELETE /pizza_tipos/1.json
  def destroy
    @pizza_tipo = PizzaTipo.find(params[:id])
    @pizza_tipo.destroy

    respond_to do |format|
      format.html { redirect_to pizza_tipos_url }
      format.json { head :no_content }
    end
  end
end
