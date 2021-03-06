RailsAdmin.config do |config|
  config.excluded_models << Assessment
  
  config.model Student do
    field :id
    field :first_name
    field :middle_name
    field :last_name
    field :egn
    field :phone
    
    group :grades do
      field :grades
    end
  end
  
  config.model Exam do
    field :id
    field :name
    field :held_in
  end
  
  config.model Grade do
    field :name
    field :exams
  end
  
  config.model User do
    field :is_active
    field :first_name
    field :last_name
    field :email
    
    group :password_change do
      field :password
      field :password_confirmation
    end
  end
end
