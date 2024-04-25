FROM neo4j:latest AS neo4j
WORKDIR /app 
COPY . .
RUN chmod +x load.sh
RUN chmod +x wrapper.sh
EXPOSE 7474
EXPOSE 7687
ENTRYPOINT ["./wrapper.sh"]