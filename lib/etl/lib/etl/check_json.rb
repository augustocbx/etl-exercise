class CheckJson
  extend LightService::Action
  expects :json_data
  promises :data_array
  executed do |context|
    if context.json_data['units'].present?
      json = context.json_data['units']
    end
    if context.json_data['unit_groups'].present?
      json = context.json_data['unit_groups']
    end
    data_array = []
    json.each do |data|
      data_array << data.symbolize_keys
    end
    context.data_array = data_array
  end
end