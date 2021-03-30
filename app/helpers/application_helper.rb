module ApplicationHelper


  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def render_svg(name, styles: "text-gray-500", title: nil)
    filename= "#{name.svg}"
    title ||= name.underscore.humanize
    inline_svg_tag(filename, aria: true, nocomment: true, title: title, class: styles)
  end

  def admin?
    user_signed_in? && current_user.admin?
  end

  def author_of(resource)
    user_signed_in? && current_user.id = resource.user_id
  end

end
