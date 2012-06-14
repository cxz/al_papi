require File.join( File.dirname(File.expand_path(__FILE__)), 'base')

describe AlPapi::WebInsight do

  describe 'initialize' do

    it 'takes a config object' do
      config = AlPapi::Config.new(api_key: TEST_KEY)
      req    = AlPapi::WebInsight.new(config)
      req.config.should be_an_instance_of(AlPapi::Config)
    end

    it 'takes a config hash' do
      req = AlPapi::WebInsight.new(api_key: TEST_KEY)
      req.config.should be_an_instance_of(AlPapi::Config)
    end

  end

end