class TesController < ApplicationController
  # GET /tes
  # GET /tes.json
  def index
    @tes = Te.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tes }
    end
  end

  # GET /tes/1
  # GET /tes/1.json
  def show
    @te = Te.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @te }
    end
  end

  # GET /tes/new
  # GET /tes/new.json
  def new
    @te = Te.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @te }
    end
  end

  # GET /tes/1/edit
  def edit
    @te = Te.find(params[:id])
  end

  # POST /tes
  # POST /tes.json
  def create
    @te = Te.new(params[:te])

    respond_to do |format|
      if @te.save
        format.html { redirect_to @te, notice: 'Te was successfully created.' }
        format.json { render json: @te, status: :created, location: @te }
      else
        format.html { render action: "new" }
        format.json { render json: @te.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tes/1
  # PUT /tes/1.json
  def update
    @te = Te.find(params[:id])

    respond_to do |format|
      if @te.update_attributes(params[:te])
        format.html { redirect_to @te, notice: 'Te was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @te.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tes/1
  # DELETE /tes/1.json
  def destroy
    @te = Te.find(params[:id])
    @te.destroy

    respond_to do |format|
      format.html { redirect_to tes_url }
      format.json { head :no_content }
    end
  end
end
