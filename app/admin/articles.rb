ActiveAdmin.register Article do

  action_item do
    link_to "add code file", :action => "process_code_file"
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Content", :multipart => true do
      f.input :title
      f.input :body
      f.input :code_file
    end
    f.inputs "Details" do
      f.input :published_at
    end
    f.buttons
  end
end
