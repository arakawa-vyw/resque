class ApplicationFormsController < ApplicationController
  before_action :set_application_form, only: [:show, :edit, :update, :destroy]

  # GET /application_forms
  # GET /application_forms.json
  def index
    @application_forms = ApplicationForm.all
  end

  # GET /application_forms/1
  # GET /application_forms/1.json
  def show
  end

  # GET /application_forms/new
  def new
    @application_form = ApplicationForm.new
  end

  # GET /application_forms/1/edit
  def edit
  end

  # POST /application_forms
  # POST /application_forms.json
  def create
    @application_form = ApplicationForm.new(application_form_params)

    respond_to do |format|
      if @application_form.save
        format.html { redirect_to @application_form, notice: 'Application form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @application_form }
      else
        format.html { render action: 'new' }
        format.json { render json: @application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_forms/1
  # PATCH/PUT /application_forms/1.json
  def update
    respond_to do |format|
      if @application_form.update(application_form_params)
        format.html { redirect_to @application_form, notice: 'Application form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_forms/1
  # DELETE /application_forms/1.json
  def destroy
    @application_form.destroy
    respond_to do |format|
      format.html { redirect_to application_forms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_form
      @application_form = ApplicationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_form_params
      params.require(:application_form).permit(:name, :status)
    end
end
