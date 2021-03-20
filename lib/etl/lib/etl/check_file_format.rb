class CheckFileFormat
  extend LightService::Action
  expects :file_format
  expects :file
  promises :file_path
  executed do |context|
    if context.file.blank?
      message = "Choose a file!"
      context.fail_and_return!(message)
    end
    context.file_path = context.file.path
    if context.file_format == 'csv'
      if !context.file_path.end_with?(".csv")
        message = "This file is not CSV!"
        context.fail_and_return!(message)
      end
    end
    if context.file_format == 'json'
      if !context.file_path.end_with?(".json")
        message = "This file is not JSON!"
        context.fail_and_return!(message)
      end
    end
  end
end