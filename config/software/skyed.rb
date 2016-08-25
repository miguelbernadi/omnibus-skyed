name "skyed"
default_version "0.1.16"

dependency "ruby"
dependency "rubygems"

build do
  gem "install skyed -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  delete "/tmp/opt/skyed/embedded/docs"
  delete "/tmp/opt/skyed/embedded/share/man"
  delete "/tmp/opt/skyed/embedded/share/doc"
  delete "/tmp/opt/skyed/embedded/ssl/man"
  delete "/tmp/opt/skyed/embedded/info"
end

