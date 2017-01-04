class SubjectsController < ApplicationController

  layout 'admin'

  def index
    @subjects=Subject.sorted
    #render('subject')
  end

  def show
    @subject=Subject.find(params[:id])
  end

  def new
    @subject =Subject.new #allows to set default values-imp
    #@subject=Subject.new({:name => 'defaullt'}) - way to add default values
  end

  def create
    #instantiate a new object using form parameters
    #@subject=Subject.new(params.require(:subject).permit(:name,:position,:visible))#returns all the key value pairs
    @subject=Subject.new(subject_params)
    if @subject.save
      #if success,redirect to the index action
      flash[:notice] = "Subject created successfully"
      redirect_to(subjects_path)
    else
      render('new')#very important-it will render not redirect with the subject object already there so the form will already
      #have the values that the user had entered before the fail
    end
  end

  def update
    @subject=Subject.find(params[:id]) #finding existing subject
    if @subject.update_attributes(subject_params)
      #redirect to show subject
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def edit
    @subject=Subject.find(params[:id])
  end

  def delete
    @subject=Subject.find(params[:id])
  end

  def destroy
    @subject=Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' created successfully"
    redirect_to(subjects_path) #redirect is imp,if we want to move to the new page
  end

  private

  def subject_params
   # @sub=Subject.find(params[:id])
    params.require(:subject).permit(:name,:position,:visible)
  end
end
