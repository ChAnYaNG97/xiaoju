class AcitivityTagsController < ApplicationController
  before_action :set_acitivity_tag, only: [:show, :edit, :update, :destroy]

  # GET /acitivity_tags
  # GET /acitivity_tags.json
  def index
    @acitivity_tags = AcitivityTag.all
  end

  # GET /acitivity_tags/1
  # GET /acitivity_tags/1.json
  def show
  end

  # GET /acitivity_tags/new
  def new
    @acitivity_tag = AcitivityTag.new
  end

  # GET /acitivity_tags/1/edit
  def edit
  end

  # POST /acitivity_tags
  # POST /acitivity_tags.json
  def create
    @acitivity_tag = AcitivityTag.new(acitivity_tag_params)

    respond_to do |format|
      if @acitivity_tag.save
        format.html { redirect_to @acitivity_tag, notice: 'Acitivity tag was successfully created.' }
        format.json { render :show, status: :created, location: @acitivity_tag }
      else
        format.html { render :new }
        format.json { render json: @acitivity_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acitivity_tags/1
  # PATCH/PUT /acitivity_tags/1.json
  def update
    respond_to do |format|
      if @acitivity_tag.update(acitivity_tag_params)
        format.html { redirect_to @acitivity_tag, notice: 'Acitivity tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @acitivity_tag }
      else
        format.html { render :edit }
        format.json { render json: @acitivity_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acitivity_tags/1
  # DELETE /acitivity_tags/1.json
  def destroy
    @acitivity_tag.destroy
    respond_to do |format|
      format.html { redirect_to acitivity_tags_url, notice: 'Acitivity tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acitivity_tag
      @acitivity_tag = AcitivityTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acitivity_tag_params
      params.require(:acitivity_tag).permit(:acitivity_id, :tag_id)
    end
end
