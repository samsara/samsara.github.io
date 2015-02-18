# Samsara Website

Content of Samsara's Website.

Selected theme: [blog.sendtoinc.com](http://blog.sendtoinc.com)

<pre>
   _____                                      
  / ___/____ _____ ___  _________ __________ _
  \__ \/ __ `/ __ `__ \/ ___/ __ `/ ___/ __ `/
 ___/ / /_/ / / / / / (__  ) /_/ / /  / /_/ / 
/____/\__,_/_/ /_/ /_/____/\__,_/_/   \__,_/  
                                              
</pre>

## Installation & Usage
_Note: The default branch for this repo is 'source'. The source should always be kept here. Running rake site:publish will generate the site and push to master. __
``` 
bundle install
jekyll serve --watch
``` 
_Note: Requires Ruby version 1.9.3 =>. For example use [rbenv](https://github.com/sstephenson/rbenv)_   
    
## Configuration
Edit: _config.yml (general options), main.css (theme colors &amp; fonts)

_Note: when editing _config.yml, you need to restart jekyll to see the changes.__

    
Run rake task. **NOTE: It will deploy the generated site to _gh-pages_ branch overwriting it**    
``` 
rake site:publish
```

## Copyright and license

Copyright 2015 Samsara's team under [Apache v2.0](LICENSE)

