class SectionsController < ApplicationController

  layout 'admin'
    def index
      @section=Section.sorted
    end

    def show
      @section=Section.find(params[:id])
    end

    def new
      @section=Section.new
    end

    def create
      @section=Section.new(section_params)
      if @section.save
        flash[:notice]="Page created successfully"
        redirect_to(pages_path)
      else
        render('new')
      end
    end

    def edit
      @section=Section.find(params[:id])
    end

    def update
      @section=Section.find(params[:id])
      if @section.update_attributes(page_params)
        flash[:notice] = "Page update success"
        redirect_to(page_path(@page))
      else
        render('edit')
      end
    end

    def delete
      @section=Section.find(params[:id])
    end

    def destroy
      @section=Section.find(params[id])
      @section.destroy
      flash[:notice] ="Page destroyed successfully"
      redirect_to(pages_path)
    end
    private
    def section_params
      params.require(:section).permit(:page_id,:name,:position,:visible,:content_type,:content)
    end
  end

