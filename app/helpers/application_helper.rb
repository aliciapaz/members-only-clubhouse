module ApplicationHelper
  def navbar_button_name(member)
    link_to member.name, edit_member_registration_path, class: 'btn btn-light mx-1' if member_signed_in?
  end

  def navbar_button_new_post
    link_to 'New Post', new_post_path, class: 'btn btn-primary mx-1' if member_signed_in?
  end

  def navbar_button_log_out
    link_to 'Log out', destroy_member_session_path, method: :delete, class: 'btn btn-primary mx-1' if member_signed_in?
  end

  def navbar_button_sign_up
    link_to 'Sign up', new_member_registration_path, class: 'btn btn-primary mx-1' unless member_signed_in?
  end

  def navbar_button_sign_in
    link_to 'Sign in', new_member_session_path, class: 'btn btn-primary mx-1' unless member_signed_in?
  end
end
