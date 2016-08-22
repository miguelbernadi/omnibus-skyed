name "skyed"
default_version "0.1.16"

dependency "ruby"
dependency "rubygems"

build do
  gem "install skyed -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  delete "/opt/skyed/embedded/docs"
  delete "/opt/skyed/embedded/share/man"
  delete "/opt/skyed/embedded/share/doc"
  delete "/opt/skyed/embedded/ssl/man"
  delete "/opt/skyed/embedded/info"
end

