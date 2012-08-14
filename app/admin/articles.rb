ActiveAdmin.register Article do

  form do |f|
    f.inputs "Content" do
      f.input :title
      f.input :body
    end
    f.inputs "Details" do
      f.input :published_at
    end
    f.buttons
  end
end
