module ApplicationHelper
  def bi_icon(icon, options = {})
    klasses = ["bi"].append(options.delete(:class)).compact
    content_tag :svg, options.merge(class: klasses, fill: "currentColor") do
      content_tag :use, nil, "xlink:href" => "#{ asset_path 'bootstrap-icons/bootstrap-icons.svg' }##{icon}"
    end
  end
end
