require 'pathname'
require 'securerandom'

ARGV.each do |item|
  path = Pathname(item)
  uuid = SecureRandom.uuid
  dt = (Time.now.utc.to_f * 1000000).to_i
  file = path.expand_path
  uuid_path = file.dirname.join("#{dt}-#{uuid}#{file.extname}")

  file.rename(uuid_path)
end

at_exit { puts "UUID rename finished successfully." }
