# Run docker container exec command 
docker exec -it mosquitto /bin/sh

# Check the mosquitto.conf file
ls -l /mosquitto/config/

# Create a password file
 touch /mosquitto/config/passwd

#  Change the permission of the password file
chmod 600 /mosquitto/config/passwd

# Usage: mosquitto_passwd [-H sha512 | -H sha512-pbkdf2] [-c | -D] passwordfile username
#        mosquitto_passwd [-H sha512 | -H sha512-pbkdf2] [-c] -b passwordfile username password
#        mosquitto_passwd -U passwordfile
#  -b : run in batch mode to allow passing passwords on the command line.
#  -c : create a new password file. This will overwrite existing files.
#  -D : delete the username rather than adding/updating its password.
#  -H : specify the hashing algorithm. Defaults to sha512-pbkdf2, which is recommended.
#       Mosquitto 1.6 and earlier defaulted to sha512.
#  -U : update a plain text password file to use hashed passwords.


# Add user 
mosquitto_passwd -b /mosquitto/config/passwd username password

# Remove user
mosquitto_passwd -D /mosquitto/config/passwd username password

# 