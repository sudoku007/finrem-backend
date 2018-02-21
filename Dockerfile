FROM openjdk:8-jre

COPY build/install/fr-backend /opt/app/

WORKDIR /opt/app

HEALTHCHECK --interval=10s --timeout=10s --retries=10 CMD http_proxy="" curl --silent --fail http://localhost:8085/health

EXPOSE 8085

ENTRYPOINT ["/opt/app/bin/fr-backend"]
