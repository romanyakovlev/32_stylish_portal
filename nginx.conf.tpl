user www-data;

events {
    worker_connections 1024;

}

http {
    server {

        listen 5000;
        server_name 127.0.0.1;

        location ~* {{css_file_name}} {
            alias {{path_to_local_css_file}};
        }

        location / {
            proxy_pass {{first_site_link}};
        }
      }
    server {

        listen 5050;
        server_name 127.0.0.1;

        location ~* {{css_file_name}} {
            alias {{path_to_local_css_file}};
        }

        location / {
            proxy_pass {{second_site_link}};
        }
      }

}
