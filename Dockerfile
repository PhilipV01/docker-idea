FROM mongo:latest
CMD tail -f /dev/null
# MongoDB has no enabled access control
# so probably no need to add environmental variable? 
#ENV MONGO_INITDB_USERNAME:${} 
#ENV MONG_INITDB_PASSWORD: 
#PORT 27017
#RUN mongod  
#RUN mongod --port="$PORT"
# && mongod --port "$PORT"