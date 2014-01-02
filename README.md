Sublime
=======

* Install Package Control (https://sublime.wbond.net/installation)

```
import urllib2,os; pf='Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler( ))); open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read()); print( 'Please restart Sublime Text to finish installation')
```

* Download this repository as .zip, move into downloaded folder and run:

```
cp sublime2/*.sublime* ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
cp -r sublime2/Color\ Scheme\ -\ User/ ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Color\ Scheme\ -\ User/
```
