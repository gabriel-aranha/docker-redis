# Base Redis image
FROM redis:latest

# Copy Redis Configuration file into the directory
COPY redis.conf /usr/local/etc/redis/redis.conf

# Execute Redis Server with the Redis Configuration File
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
