ActiveAdmin.register Topic do

  permit_params :name, note_ids:[]


  show title: 'Test' do
    h3 'You have ' + pluralize(topic.notes.count, 'note') + ' referencing ' + (topic.name)
    topic.notes.each do |note|
      div do
        h1 note.title
        h4 link_to "[#{note.id}]: You created this note on "
      end
    end
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end