class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update destroy ]

  # GET /pages or /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1 or /pages/1.json
  def show
    # Redirect to the latest version of the page slug if an old slug was used
    if request.path != page_path(@page)
      redirect_to(@page, status: :moved_permanently, notice: "The page you requested (#{request.url}) is now accessible at this current url (#{page_url(@page)}). You have been automatically redirected")
    end
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    # Redirect to the latest version of the page slug if an old slug was used
    if request.path != edit_page_path(@page)
      redirect_to(edit_page_path(@page), status: :moved_permanently, notice: "The page you requested (#{request.url}) is now accessible at this current url (#{page_url(@page)}). You have been automatically redirected")
    end
  end

  # POST /pages or /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @page.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: "Page was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @page.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /pages/1 or /pages/1.json
  def destroy
    @page.destroy!

    respond_to do |format|
      format.html { redirect_to pages_path, notice: "Page was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.expect(page: [ :title, :subtitle, :body, :published_at, page_attachments: [] ])
    end
end
