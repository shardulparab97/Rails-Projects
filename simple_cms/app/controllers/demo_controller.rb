class DemoController < ApplicationController #shows that it inherits from ApplicationController
  layout 'application'
  def index
    render('index')#no need to put this,works by default
   # render('hello')#- #this helps in deciding the layout/view that we want when we do /demo/index
  end
  
  def hello
    @array=[1,2,3,4,5]
    @id=params['id']
    @page=params['page']
    render('hello')
  end
  
  def other_hello
    redirect_to(:controller => 'demo',:action => 'index')
  end
  
  def seo
    redirect_to('http://google.com')
  end

  def escape_output

  end
  
end
