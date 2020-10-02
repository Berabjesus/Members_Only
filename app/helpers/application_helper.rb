module ApplicationHelper
  def user_status
    links = []
    if user_signed_in?
      links[0] = link_to current_user.name, edit_user_registration_path, class: 'btn btn-info'
      links[1] = link_to 'Logout', destroy_user_session_path, method: :delete, class: 'btn btn-warning border'
    else
      links[0] = link_to 'Login', new_user_session_path, class: 'btn text-white border'
      links[1] = link_to 'Sign Up', new_user_registration_path, class: 'btn text-white border'
    end
    links
  end
end
