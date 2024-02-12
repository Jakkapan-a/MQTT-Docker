FROM eclipse-mosquitto:latest

COPY src/mosquitto.conf /mosquitto/config/mosquitto.conf

EXPOSE 1883