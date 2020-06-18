FROM jboss/keycloak:9.0.3

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin
 
ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]

CMD gunicorn --bind 0.0.0.0:$PORT wsgi 

