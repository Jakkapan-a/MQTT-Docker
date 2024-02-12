FROM eclipse-mosquitto:latest

COPY src/config/mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883