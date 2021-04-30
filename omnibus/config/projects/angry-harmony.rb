current_file = __FILE__
toolchain_project_contents = IO.read(File.expand_path("../harmony.rb", __FILE__))
self.instance_eval toolchain_project_contents

name "angry-harmony"
friendly_name "Angry Harmony"

install_dir "#{default_root}/#{name}"

package_name name if windows?

resources_path "#{resources_path}/../harmony"

msi_upgrade_code = "3AA89B1F-D8F3-4D46-8CB2-534C8313DBFD"
project_location_dir = name
