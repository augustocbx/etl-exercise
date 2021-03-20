class ParserJson
  extend LightService::Action
  expects :file_path
  expects :file_format
  promises :data_array
  executed do |context|
    json_content = File.read(context.file_path)
    json = JSON.parse(json_content)
    data_array = []
    json['units'].each do |data|
      data_array << data.symbolize_keys
    end
    context.data_array = data_array
  end
end