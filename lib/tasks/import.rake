namespace :imports do

  desc 'products from json'
  task :products => :environment do
    Dir['lib/json/*'].each do |file|
      json = JSON.parse(File.read(file))
      json.each do |j|
        begin
          Product.create(j)
        rescue
          puts 'product cold not be saved'
        end
      end
    end
  end
end
