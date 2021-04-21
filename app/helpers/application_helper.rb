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

  def message_date message
    return "Today" if message.created_at.to_date ==  Date.today
    return "Yesterday" if message.created_at.to_date ==Date.yesterday
    return  message.created_at.strftime("%d/%m/%Y") rescue nil
  end

  def job_type_color job_type
    case job_type
    when "Contract"
      "contract"
    when "Full-time"
      "full-time"
    when "Part-time"
      "part-time"
    when "Freelance"
      "freelance"
    else
      "You gave me #{x} -- I have no idea what to do with that."
    end
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

end
