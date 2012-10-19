class EnvironmentNodesController < ApplicationController
  # GET /environment_nodes
  # GET /environment_nodes.json
  def index
    @environment_nodes = EnvironmentNode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @environment_nodes }
    end
  end

  # GET /environment_nodes/1
  # GET /environment_nodes/1.json
  def show
    @environment_node = EnvironmentNode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @environment_node }
    end
  end

  # GET /environment_nodes/new
  # GET /environment_nodes/new.json
  def new
    @environment = Environment.find(params[:environment_id])
    @environment_node = EnvironmentNode.new(:environment_id => @environment.id)

    respond_to do |format|
      format.html # new.html.erb
      #redirect_to @environment
      format.json { render :json => @environment_node }
    end
  end

  # GET /environment_nodes/1/edit
  def edit
    @environment_node = EnvironmentNode.find(params[:id])
  end

  # POST /environment_nodes
  # POST /environment_nodes.json
  def create
    @environment_node = EnvironmentNode.new(params[:environment_node])


    respond_to do |format|
      if @environment_node.save
        #format.html { redirect_to @environment_node, :notice => 'Environment node was successfully created.' }
        format.html { redirect_to  @environment_node.environment, :notice =>  'Environment node was successfully created.' }
        format.json { render :json => @environment_node, :status => :created, :location => @environment_node }
      else
        format.html { render :action => "new" }
        format.json { render :json => @environment_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /environment_nodes/1
  # PUT /environment_nodes/1.json
  def update
    @environment_node = EnvironmentNode.find(params[:id])

    respond_to do |format|
      if @environment_node.update_attributes(params[:environment_node])

        
        format.html { redirect_to  @environment_node.environment, :notice =>  'Environment node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @environment_node.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /environment_nodes/1
  # DELETE /environment_nodes/1.json
  def destroy
    @environment_node = EnvironmentNode.find(params[:id])
    @environment_node.destroy

    respond_to do |format|
      format.html { redirect_to environment_nodes_url }
      format.json { head :no_content }
    end
  end
end
