# Use the Keycloak image from quay.io
FROM quay.io/keycloak/keycloak:21.1

# Set the required environment variables for PostgreSQL
ENV DB_VENDOR POSTGRES
ENV DB_ADDR dumbo.db.elephantsql.com
ENV DB_DATABASE vpbawnrv
ENV DB_USER vpbawnrv
ENV DB_PASSWORD xe3P06Db4Hd08Q8zfZngSm_2RPdcrfca

# Set the Keycloak admin user and password
ENV KEYCLOAK_USER your_keycloak_username
ENV KEYCLOAK_PASSWORD your_keycloak_password

# Expose the Keycloak port
EXPOSE 8080

# Start Keycloak
CMD ["-b", "0.0.0.0"]
