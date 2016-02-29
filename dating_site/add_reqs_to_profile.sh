### MODEL:

# Create Requirement Model:

bin/rails g model Requirement requirement_type:string requirement:string importance:integer profile:references

bin/rake db:migrate

# Link Profile to Requirement:

sed -i '.bak' "s/end/  has_many :requirements/g" app/models/profile.rb
echo "end" >> app/models/profile.rb

# Link Requirement to Profile:

sed -i '.bak' "s/end/  belongs_to :profile/g" app/models/requirement.rb
echo "end" >> app/models/requirement.rb

# Change Routes:

#delete 2nd line:
sed -i '.bak' "2d" config/routes.rb

# Replace final line with new code:
sed -i '.bak' "s/end/  resources :profiles do/g" config/routes.rb
echo "    resources :requirements " >> config/routes.rb
echo "  end" >> config/routes.rb
echo "end" >> config/routes.rb 

### CONTROLLER:

bin/rails generate controller requirements

# Delete 2nd line & Replace with new code:

sed -i '.bak' "2d" app/controllers/requirements_controller.rb

echo "  def create" >> app/controllers/requirements_controller.rb
echo "    @profile = Profile.find(params[:profile_id])" >> app/controllers/requirements_controller.rb
#
echo "" >> app/controllers/requirements_controller.rb
#
echo "    if @profile.requirements.create(requirement_params)" >> app/controllers/requirements_controller.rb
echo "      redirect_to @profile," >> app/controllers/requirements_controller.rb
echo "                  notice: 'Requirement was successfully created.'" >> app/controllers/requirements_controller.rb
echo "    else" >> app/controllers/requirements_controller.rb
echo "      redirect_to @profile," >> app/controllers/requirements_controller.rb
echo "                  alert: 'Error creating Requirement.'" >> app/controllers/requirements_controller.rb
echo "    end" >> app/controllers/requirements_controller.rb
echo "  end" >> app/controllers/requirements_controller.rb
#
echo "" >> app/controllers/requirements_controller.rb
#
echo "  private" >> app/controllers/requirements_controller.rb
echo "  def requirement_params" >> app/controllers/requirements_controller.rb
echo "    params.require(:requirement).permit(:author, :body)" >> app/controllers/requirements_controller.rb
echo "  end" >> app/controllers/requirements_controller.rb

echo "end" >> app/controllers/requirements_controller.rb

### VIEW:

echo "<h3>requirements</h3>" >> app/views/profiles/show.html.erb
echo "<%= render @profile.requirements %>" >> app/views/profiles/show.html.erb

echo "<blockquote>" >> app/views/requirements/_Requirement.html.erb
echo "  <%= Requirement.body %>" >> app/views/requirements/_Requirement.html.erb
echo "</blockquote>" >> app/views/requirements/_Requirement.html.erb

### FORMS:

echo "<h4>New Requirement</h4>" >> app/views/profiles/show.html.erb

echo "<%= form_for [@profile, @profile.requirements.build] do |f| %>" >> app/views/profiles/show.html.erb
echo "  <div class='field'>" >> app/views/profiles/show.html.erb
echo "    <%= f.label :author %><br>" >> app/views/profiles/show.html.erb
echo "    <%= f.text_field :author %>" >> app/views/profiles/show.html.erb
echo "  </div>" >> app/views/profiles/show.html.erb
echo "" >> app/views/profiles/show.html.erb
echo "" >> app/views/profiles/show.html.erb
echo "  <div class='field'>" >> app/views/profiles/show.html.erb
echo "    <%= f.label :body %><br>" >> app/views/profiles/show.html.erb
echo "    <%= f.text_area :body %>" >> app/views/profiles/show.html.erb
echo "  </div>" >> app/views/profiles/show.html.erb
echo "  <div class='actions'>" >> app/views/profiles/show.html.erb
echo "    <%= f.submit %>" >> app/views/profiles/show.html.erb
echo "  </div>" >> app/views/profiles/show.html.erb
echo "<% end %>" >> app/views/profiles/show.html.erb







