class ParserJson
  extend LightService::Action
  expects :file_path
  expects :file_format
  promises :json_data
  executed do |context|
    json_content = File.read(context.file_path)
    context.json_data = JSON.parse(json_content)
  end
end