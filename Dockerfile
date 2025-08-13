# Use the official Langflow Docker image as the base image.
# The 'latest' tag ensures you get the most recent stable version.
FROM langflowai/langflow:latest

# Set environment variables for admin user credentials and to disable auto-login.
# Replace 'your_admin_username' and 'your_strong_password' with your desired credentials.
# LANGFLOW_AUTO_LOGIN=False enforces authentication for accessing the UI and API.
# LANGFLOW_SUPERUSER sets the username for the administrator account.
# LANGFLOW_SUPERUSER_PASSWORD sets the password for the administrator account.
# LANGFLOW_HOST=0.0.0.0 makes Langflow accessible from any network interface inside the container,
# which is necessary for Docker containers to be reachable from the host.
ENV LANGFLOW_AUTO_LOGIN=False \
    LANGFLOW_SUPERUSER=admin \
    LANGFLOW_SUPERUSER_PASSWORD=123345616k!__# \
    LANGFLOW_HOST=0.0.0.0 \
    LANGFLOW_PORT=7860

# Expose the port on which Langflow runs.
# The default port for Langflow is 7860. You can change this in the ENV variable above
# if you want Langflow to listen on a different port internally in the container.
EXPOSE 7860

# Define the command to run Langflow when the container starts.
# 'langflow run' starts the Langflow server.
# The host and port are picked up from the environment variables set above.
CMD ["langflow", "run"]
