require 'rubygems'
require 'optparse'
require 'yaml'

desc:'create new post'
task :post do
  OptionParser.new.parse!
  ARGV.shift
  title = ARGV.join(' ')

  path = "_posts/#{Date.today}-#{title.downcase.gsub(/[^[:alnum:]]+/, '-')}.md"
  
  if File.exist?(path)
    puts "[WARN] File exists - skipping create"
  else
    File.open(path, "w") do |file|
      file.puts YAML.dump({'layout' => 'post', 'description' => false, 'title' => title})
      file.puts "---"
    end
  end
  #`subl #{path}`

  exit 1
end

desc:'upload to amazon s3'
task :s3 do
  sh "s3cmd sync --acl-public --delete-removed ~/Sites/www.seedprod.com/_site/ s3://www.seedprod.com"

end