require 'light-service'

class FileProcessing
  extend LightService::Organizer

  def self.call(file, file_format, fields, active_record_class)
    with(file: file, file_format: file_format, fields: fields, active_record_class: active_record_class).reduce(actions)
  end

  def self.actions
    [
      SetFormat,
      CheckFileFormat,
      CheckFileExistence,
      reduce_if(->(ctx) { ctx.file_format == 'csv' }, [
        ParserCsv
      ]), reduce_if(->(ctx) { ctx.file_format == 'json' }, [
      ParserJson
    ]),
      CleanData,
      StoreData,
    ]
  end
end