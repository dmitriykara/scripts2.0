#!/bin/bash

### HERE WE WILL INSTALL AND SETUP 
### Part of guide from COMMUNITY (PAY ATTENTION) https://www.digitalocean.com/community/tutorials/how-to-install-postgresql-on-ubuntu-20-04-quickstart

#To install PostgreSQL, first refresh your server’s local package index:
sudo apt update

#Then, install the Postgres package along with a -contrib package that adds some additional utilities and functionality:
sudo apt install postgresql postgresql-contrib

#Ensure that the service is started:
sudo systemctl start postgresql.service

# Do not forget to grant permissions
# ALTER DATABASE <db_name> OWNER TO <user_name>;
# GRANT ALL PRIVILEGES ON SCHEMA public TO <user_name>;
# GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO <user_name>;
# GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public to <user_name>;

# Pay attention to:
# https://www.postgresql.org/docs/current/runtime-config-connection.html 
# https://stackoverflow.com/questions/11753296/configure-postgresql-to-work-for-only-localhost-or-specified-ip-port
# https://chartio.com/resources/tutorials/how-to-set-the-default-user-password-in-postgresql/ 
# https://ubiq.co/database-blog/how-to-list-all-users-in-postgresql/
# https://stackoverflow.com/questions/4328679/how-to-configure-postgresql-so-it-accepts-loginpassword-auth
