# Shared CSS Library

This module allows you to create nginx config for testing css library on several sites.

## Requirements
- envtpl

# How to Test

## 1. Install requirements
```sh
$ pip install -r requirements
```

## 2. Install nginx
[Link for installing](http://nginx.org/en/docs/install.html)

## 3. Create symlink for nginx config
```sh
$ ln -s /etc/nginx/nginx.conf /path_to_nginx_config/nginx.conf
```

## 4. Render nginx config template
```sh
$ path_to_local_css_file=/path_to_css_file/style.css \ 
first_site_link=https://google.com second_site_link=https://devman.org \
css_file_name=style.css envtpl < nginx.conf.tpl > nginx.conf

```

## 5. Reload server
```sh
$ sudo service nginx reload
```

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
