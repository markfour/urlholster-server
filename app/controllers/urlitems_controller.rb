class UrlitemsController < ApplicationController
  before_action :set_urlitem, only: [:show, :edit, :update, :destroy]

  # GET /urlitems
  # GET /urlitems.json
  def index
    @urlitems = Urlitem.all
  end

  # GET /urlitems/1
  # GET /urlitems/1.json
  def show
  end

  # GET /urlitems/new
  def new
    @urlitem = Urlitem.new
  end

  # GET /urlitems/1/edit
  def edit
  end

  # POST /urlitems
  # POST /urlitems.json
  def create
    @urlitem = Urlitem.new(urlitem_params)

    respond_to do |format|
      if @urlitem.save
        format.html { redirect_to @urlitem, notice: 'Urlitem was successfully created.' }
        format.json { render :show, status: :created, location: @urlitem }
      else
        format.html { render :new }
        format.json { render json: @urlitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urlitems/1
  # PATCH/PUT /urlitems/1.json
  def update
    respond_to do |format|
      if @urlitem.update(urlitem_params)
        format.html { redirect_to @urlitem, notice: 'Urlitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @urlitem }
      else
        format.html { render :edit }
        format.json { render json: @urlitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urlitems/1
  # DELETE /urlitems/1.json
  def destroy
    @urlitem.destroy
    respond_to do |format|
      format.html { redirect_to urlitems_url, notice: 'Urlitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urlitem
      @urlitem = Urlitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urlitem_params
      params.require(:urlitem).permit(:user_id, :rawurl, :web_title, :preserveDate, :unread, :archive)
    end
end
