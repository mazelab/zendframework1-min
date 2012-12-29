zf1-composer
============

Zend Framework 1 with composer support and minimized require_once. The repository branches off from the version 1.12.x-minimal. For performance reasons require_once was commented out.

Installation
============

## vcs-style

    "repositories": [
        {
            "type" : "git",
            "url" : "https://github.com/cdsinternetagentur/zf1-composer.git"
        }
    ],
    "require": {
        "php": ">=5.2.11",
        "zend/zendframework": "<2"
    },
    
This example shows the integration of the latest version.

Used Manipulations
==================

http://framework.zend.com/manual/1.12/de/performance.classloading.html#performance.classloading.striprequires.sed

find . -name '*.php' -not -wholename '*/Loader/Autoloader.php' \
  -not -wholename '*/Application.php' -print0 | \
  xargs -0 sed --regexp-extended --in-place 's/(require_once)/\/\/ \1/g'