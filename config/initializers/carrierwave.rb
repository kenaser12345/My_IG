CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS+KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    host: "s3-ap-northeast-1.amazonaws.com",
    region: ENV['AWS_REGION']
  }
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory = ENV['FOG_DIRECTORY']
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}"}
end