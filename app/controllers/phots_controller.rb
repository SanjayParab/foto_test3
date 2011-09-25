class PhotsController < ApplicationController
  # GET /phots
  # GET /phots.xml
  def index
    @phots = Phot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @phots }
    end
  end

  # GET /phots/1
  # GET /phots/1.xml
  def show
    @phot = Phot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @phot }
    end
  end

  # GET /phots/new
  # GET /phots/new.xml
  def new
    @phot = Phot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @phot }
    end
  end

  # GET /phots/1/edit
  def edit
    @phot = Phot.find(params[:id])
  end

  # POST /phots
  # POST /phots.xml
  def create
    @phot = Phot.new(params[:phot])

    respond_to do |format|
      if @phot.save
        format.html { redirect_to(@phot, :notice => 'Photograph was successfully created.') }
        format.xml  { render :xml => @phot, :status => :created, :location => @phot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @phot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phots/1
  # PUT /phots/1.xml
  def update
    @phot = Phot.find(params[:id])

    respond_to do |format|
      if @phot.update_attributes(params[:phot])
        format.html { redirect_to(@phot, :notice => 'Photgraph was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @phot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phots/1
  # DELETE /phots/1.xml
  def destroy
    @phot = Phot.find(params[:id])
    @phot.destroy

    respond_to do |format|
      format.html { redirect_to(phots_url) }
      format.xml  { head :ok }
    end
  end
end
