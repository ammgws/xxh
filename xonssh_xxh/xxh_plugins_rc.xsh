import os, glob

import_path = os.path.join($XXH_HOME, 'plugins')
xonshrc_plugins_rc=[]
for rc in sorted(glob.glob(os.path.join(import_path, '*/xonshrc.xsh'))):
    xonshrc_plugins_rc.append(rc)

# Prefix `xxh-plugins: ` is needed to workaround some cases when ssh write warnings to stdout and return before this
print(f"xxh-plugins# {' '.join(xonshrc_plugins_rc)}")