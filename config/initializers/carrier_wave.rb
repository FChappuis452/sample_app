if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for cloudinary
      :provider              => 'Cloudinary',
      :aws_access_key_id     => ENV['C_API_KEY'],
      :aws_secret_access_key => ENV['C_API_SECRET']
    }
    config.fog_directory     =  ENV['C_BUCKET']
  end
end