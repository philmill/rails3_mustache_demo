class Widgets::Show < Mustache::Rails
  
    def title
    widget.title
  end
  
    def description
    widget.description
  end
  
  
  def edit_path
    edit_widget_path(@widget)
  end
  
  def index_path
    widgets_path
  end
  
end