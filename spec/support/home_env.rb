# Swap home directory to current project spec/tmp
# to allow for writing files + cleanup
RSpec.configure do |config|
  config.before do
    @old_home = ENV['HOME']
    ENV['HOME'] = File.join(__dir__, '../tmp')
  end
  config.after do
    ENV['HOME'] = @old_home
  end
end
