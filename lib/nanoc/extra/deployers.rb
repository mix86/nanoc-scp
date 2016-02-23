module Nanoc::Extra
  module Deployers
    autoload 'Scp', 'nanoc/extra/deployers/scp'
    Nanoc::Extra::Deployer.register '::Nanoc::Extra::Deployers::Scp', :scp
  end
end
