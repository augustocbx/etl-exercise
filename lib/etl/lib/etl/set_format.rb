class SetFormat
  extend LightService::Action
  expects :file_format
  executed do |context|
    if !['csv', 'json'].include?(context.file_format)
      message = "The format is not supported!"
      context.fail_and_return!(message)
    end
    context.file_format = context.file_format
  end
end