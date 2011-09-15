class Widgets::Edit < Mustache::Rails

  def errors_display_div
    return "" unless widget.errors.any?
    content_tag("div", :id=>"errorExplanation", :class=>"errorExplanation") do
      content_tag("h2", error_header) + content_tag("ul") do 
        widget.errors.full_messages.inject("") do |memo,msg|
          memo += content_tag("li", msg)
        end
      end
    end
  end
  
def widget_form_tag
    form_tag(update_path, :class => "widget_form", :method => :put, :id => "edit_widget_#{widget.id}_form")
  end
  
def title_label
    label :widget, :title
  end
    
def title_text_field
    text_field(:widget, :title, :id => "title_text_field")
  end

def description_label
    label :widget, :description
  end
    
def description_text_field
    text_field(:widget, :description, :id => "description_text_field")
  end


  def form_submit
    submit_tag "Update"
  end
  
  def show_path
    widget_path(widget)
  end  
  
  def index_path
    widgets_path
  end
  
  private
  
  def update_path
    widget_path(widget)
  end
  
  def error_header
    "u r dong it rong"
  end
  
end