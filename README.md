# Sublime

## Installation

Install Package Control (https://sublime.wbond.net/installation)

```
import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
```

The install script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/jefkoslowski/sublime.git && cd sublime && source install.sh
```

To update, `cd` into your local `sublime` repository and then:

```bash
source install.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source install.sh
```
