FROM mongo:latest
# MongoDB has no enabled access control
# so probably no need to add environmental variable? 
#ENV MONGO_INITDB_USERNAME:${} 
#ENV MONG_INITDB_PASSWORD: 
#PORT 27017
CMD mongod  && mongod --port="$PORT"
# && mongod --port "$PORT"