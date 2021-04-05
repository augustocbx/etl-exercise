#bundle exec rake atena4:tipo_objeto_por_competencia_e_categoria RAILS_ENV=production
namespace :etl do
  desc "Run ETl library in the files inside data folder."
  task :run => [ :environment ] do
    data_path = Rails.root.join('data')
    Dir.entries(data_path.join('json')).select{|filename| filename.include?('.json')}.each do |filename|
      result = FileProcessing.call(File.new(data_path.join('json', filename)), 'json', [:name, :description, :area, :vom, :id, :price], Unit)
      puts result.message
    end
    Dir.entries(data_path.join('csv')).select{|filename| filename.include?('.csv')}.each do |filename|
      result = FileProcessing.call(File.new(data_path.join('csv', filename)), 'csv', [:name, :description, :area, :vom, :id, :price], Unit)
      p result.message
    end
  end
end