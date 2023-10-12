# Use the official Grafana base image
FROM grafana/grafana:latest

# Set environment variables if needed
# ENV GRAFANA_VARIABLE_NAME=variable_value

# Copy any custom configuration files or plugins
COPY grafana.ini /etc/grafana/grafana.ini
# COPY plugins/* /var/lib/grafana/plugins/

# Expose the Grafana port
EXPOSE 3000

# Start Grafana
CMD ["grafana-server", "--config=/etc/grafana/grafana.ini"]