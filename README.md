# Samsara Website
Modern Jekyll based blog and website for Samsara. 
Selected theme: [blog.sendtoinc.com](http://blog.sendtoinc.com)

   _____                                      
  / ___/____ _____ ___  _________ __________ _
  \__ \/ __ `/ __ `__ \/ ___/ __ `/ ___/ __ `/
 ___/ / /_/ / / / / / (__  ) /_/ / /  / /_/ / 
/____/\__,_/_/ /_/ /_/____/\__,_/_/   \__,_/  
                                              


## Installation & Usage
_Note: The default branch for this repo is 'source'. The source should always be kept here. Running rake site:publish will generate the site and push to master. __
``` 
bundle install
jekyll serve --watch
``` 
_Note: Requires Ruby version 1.9.3 =>. For example use [rbenv](https://github.com/sstephenson/rbenv)_   
    
## Configuration
Edit: _config.yml (general options), main.css (theme colors &amp; fonts)

```
jekyll-incorporated/
├── _config.yml
├── _assets/
    ├── stylesheets/
        ├── main.scss
```

_Note: when editing _config.yml, you need to restart jekyll to see the changes.__

    
## Publish to Github Pages
1. Add your domain to _CNAME_
2. Edit your repo address at _Rakefile_
    
Run rake task. **NOTE: It will deploy the generated site to _gh-pages_ branch overwriting it**    
``` 
rake site:publish
```

## Usage examples

* Adroll Engineering http://tech.adroll.com/
* Brace.io blog http://blog.brace.io/
* Spark.io blog http://blog.spark.io/
* Department of Better Technology http://blog.dobt.co/

## Authors

Originally build for [sendtoinc.com](https://sendtoinc.com), your workspace for sharing and organizing knowledge

**Karri Saarinen**

+ [http://twitter.com/karrisaarinen](http://twitter.com/karrisaarinen)
+ [http://github.com/ksaa](http://github.com/ksaa)

**Jori Lallo**

+ [http://twitter.com/jorilallo](http://twitter.com/jorilallo)
+ [http://github.com/jorde](http://github.com/jorilallo)

## Todo:

+ Documentation
+ Less config files
+ Better deploy scripts

## Copyright and license

Copyright 2013 Kippt Inc. under [The MIT License ](LICENSE)

