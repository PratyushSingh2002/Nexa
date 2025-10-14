FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code (dockerignore will skip sensitive files)
COPY . .

# Default command
CMD ["python", "main.py"]
