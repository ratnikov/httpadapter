module HTTPAdapter::Config
  extend self

  attr_writer :ssl_certificate

  def ssl_certificate
    @ssl_certificate ||= File.expand_path(ENV['CA_FILE'] || '~/.cacert.pem')
  end
end
