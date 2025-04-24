# Use the official Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y 

# Install Python dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY . .

# Streamlit uses port 8501 by default
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "chatbot.py"]
