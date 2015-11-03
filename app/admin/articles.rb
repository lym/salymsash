ActiveAdmin.register Article do
  show do |ad|
    attributes_table do
      row :title
      row :body
    end
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
