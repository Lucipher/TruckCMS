class ContactsRepaiersController < ApplicationController
  # GET /contacts_repaiers
  # GET /contacts_repaiers.json
  def index
    @contacts_repaiers = ContactsRepaier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contacts_repaiers }
    end
  end

  # GET /contacts_repaiers/1
  # GET /contacts_repaiers/1.json
  def show
    @contacts_repaier = ContactsRepaier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contacts_repaier }
    end
  end

  # GET /contacts_repaiers/new
  # GET /contacts_repaiers/new.json
  def new
    @contacts_repaier = ContactsRepaier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contacts_repaier }
    end
  end

  # GET /contacts_repaiers/1/edit
  def edit
    @contacts_repaier = ContactsRepaier.find(params[:id])
  end

  # POST /contacts_repaiers
  # POST /contacts_repaiers.json
  def create
    @contacts_repaier = ContactsRepaier.new(params[:contacts_repaier])

    respond_to do |format|
      if @contacts_repaier.save
        format.html { redirect_to @contacts_repaier, notice: 'Contacts repaier was successfully created.' }
        format.json { render json: @contacts_repaier, status: :created, location: @contacts_repaier }
      else
        format.html { render action: "new" }
        format.json { render json: @contacts_repaier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contacts_repaiers/1
  # PUT /contacts_repaiers/1.json
  def update
    @contacts_repaier = ContactsRepaier.find(params[:id])

    respond_to do |format|
      if @contacts_repaier.update_attributes(params[:contacts_repaier])
        format.html { redirect_to @contacts_repaier, notice: 'Contacts repaier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contacts_repaier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts_repaiers/1
  # DELETE /contacts_repaiers/1.json
  def destroy
    @contacts_repaier = ContactsRepaier.find(params[:id])
    @contacts_repaier.destroy

    respond_to do |format|
      format.html { redirect_to contacts_repaiers_url }
      format.json { head :no_content }
    end
  end
end
