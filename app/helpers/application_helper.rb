module ApplicationHelper
  # def link_to_add_row(menu_item_id, f, association, **args)
  #   new_object = f.object.send(association).klass.new
  #   id = new_object.object_id
  #   fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
  #     render(association.to_s.singularize, f: builder)
  #   end
  #   link_to(menu_item_id, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
  # end

  # def add_item_link(name)
  #   link_to_function name do |page|
  #     page.insert_html :bottom, :items, :partial => 'order_line', :object => OrderLine.new
  #   end
  # end

end
