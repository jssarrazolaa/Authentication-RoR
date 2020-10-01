module ApplicationHelper
  def not_log
    link_to 'Log in', new_user_session_path, class: 'btn btn-primary text-white' unless user_signed_in?
  end

  def not_sign
    link_to 'Sign Up', new_user_registration_path, class: 'btn btn-primary text-white' unless user_signed_in?
  end

  def form_helper
    link_to 'New Post', new_post_path, class: 'btn btn-success text-white text-center' if user_signed_in?
  end

  def form_log
    if user_signed_in?
      link_to 'Log out', destroy_user_session_path, method: :delete, class: 'btn btn-primary text-white'
    end
  end
end
