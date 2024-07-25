# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Custom Sege

# Expose port 80
EXPOSE 80

# Copy custom configuration files if needed
# COPY custom-php.ini /usr/local/etc/php/

# Define the entry point
ENTRYPOINT ["docker-entrypoint.sh"]

# Run WordPress
CMD ["apache2-foreground"]
