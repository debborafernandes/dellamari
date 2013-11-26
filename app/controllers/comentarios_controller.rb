class ComentariosController < ApplicationController

  def index
    @comentarios = Comentario.search params

    respond_to do |format|
      format.html 
      format.json { render json: @comentarios }
    end
  end

  def show
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @comentario }
    end
  end

  def new
    @comentario = Comentario.new

    respond_to do |format|
      format.html 
      format.json { render json: @comentario }
    end
  end
  
  def edit
    @comentario = Comentario.find(params[:id])
  end

  def create
    @comentario = Comentario.new(params[:comentario])

    respond_to do |format|
      if @comentario.save
        format.html { redirect_to @comentario, notice: 'Comentario was successfully created.' }
        format.json { render json: @comentario, status: :created, location: @comentario }
      else
        format.html { render action: "new" }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      if @comentario.update_attributes(params[:comentario])
        format.html { redirect_to @comentario, notice: 'Comentario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comentario.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy

    respond_to do |format|
      format.html { redirect_to comentarios_url }
      format.json { head :no_content }
    end
  end
end
