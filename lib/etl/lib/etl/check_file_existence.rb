class CheckFileExistence
  extend LightService::Action
  expects :file_format
  expects :file
  executed do |context|
    if !File.exists?(context.file_path)
      message = "File not exists!"
      context.fail_and_return!(message)
    end
  end
end