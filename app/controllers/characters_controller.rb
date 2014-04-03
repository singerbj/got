class CharactersController < ApplicationController
  def index
    @characters = Character.all.sort {|a,b| b.total_points <=> a.total_points}
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(params[:character])
    if @character.save
      redirect_to characters_path, :notice => "Successfully created character."
    else
      render :action => 'new'
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    if @character.update_attributes(params[:character])
      redirect_to edit_character_path(@character), :notice => "Successfully updated character."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to characters_url, :notice => "Successfully destroyed character."
  end
end
