if Rails.env.production?
  CarrierWave.configure do |config|
    Cloudinary.config do |config|
      # Configuration for cloudinary
      config.cloud_name = ENV['C_BUCKET']
      config.api_key = ENV['C_API_KEY']
      config.api_secret = ENV['C_API_SECRET']
      config.secure = ENV['C_SECURE']
      config.cdn_subdomain = ENV['C_SUB']
    end    
  end
end