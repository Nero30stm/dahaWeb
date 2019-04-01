ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :descr, :mainPhoto, :mark_id, :type_id, :cost, :count
  index do 
  	column :name
  	column :descr
  	column :mainPhoto
  	column :mark_id
  	column :type_id
  	column :cost
  	column :count
  	actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
