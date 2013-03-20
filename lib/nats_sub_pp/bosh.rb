require 'uri'
require 'yaml'

module NatsSubPp

  module_function

  def bosh_deployment
    `bosh -n deployment`.chomp
  end

  def bosh_nats_uri(manifest_path)
    yaml = YAML.load_file(manifest_path)
    props = yaml['properties']['nats2'] || yaml['properties']['nats']
    URI::Generic.build(
        :scheme => 'nats',
        :userinfo => "#{props['user']}:#{props['password']}",
        :host => props['address'],
        :port => props['port'],
    ).to_s
  end

end
