# Use the official lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose the port (optional, if you're using something like Streamlit or Flask)
EXPOSE 8501

# Run your app (replace with your actual entry point)
CMD ["python", "app.py"]
