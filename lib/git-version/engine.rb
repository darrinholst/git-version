module GitVersion
  class Engine < Rails::Engine
    isolate_namespace GitVersion
  end
end
