# Start from a lightweight Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy files from context
COPY . .

# Install dependencies if requirements.txt exists
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# Expose port if needed (e.g., for Flask)
EXPOSE 8080

# Default command
CMD ["python", "main.py"]
