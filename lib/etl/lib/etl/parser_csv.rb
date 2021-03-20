require 'csv'
class ParserCsv
  extend LightService::Action
  expects :file_path
  expects :file_format
  promises :data_array

  executed do |context|
    csv = CSV.open(context.file_path, headers: true, col_sep: ',')
    data_array = []
    csv.each do |row|
      data = row.to_hash.compact
      if !data.empty?
        data_array << row.to_hash.symbolize_keys
      end
    end
    context.data_array = data_array
  end
end
