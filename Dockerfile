# Base redis image for arm64v8 architecture
FROM arm64v8/redis:6.0

# Copy Redis Configuration file into the directory
COPY redis.conf /usr/local/etc/redis/redis.conf

# Execute Redis Server with the Redis Configuration File
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]