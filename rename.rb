require 'pathname'

ARGV.each do |item|
  path = Pathname(item)
  time = (Time.now.utc.to_f * 1000000).to_i
  file = path.expand_path
  new_path = file.dirname.join("#{time}#{file.extname}")

  file.rename(new_path)
end

at_exit { puts "Rename finished successfully." }
