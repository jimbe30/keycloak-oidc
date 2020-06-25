FROM jboss/keycloak:9.0.3

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin

COPY docker-entrypoint.sh /opt/jboss/tools/

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]