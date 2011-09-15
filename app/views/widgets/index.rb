class Widgets::Index < Mustache::Rails

  def new_path
    new_widget_path()
  end
  
  def listing
    widgets.collect do |record|
      {
          :title => record.title,
          :description => record.description,
          :show_path => widget_path(record)
      }
    end
  end
  
end