# Stage 1: Build the Vite frontend
FROM node:22-slim AS build-frontend
WORKDIR /app/frontend
COPY frontend/package*.json ./
RUN npm install
COPY frontend/ ./
RUN npm run build

# Stage 2: Serve the application with Python FastAPI
FROM python:3.12-slim
WORKDIR /app

# Install dependencies for python packages like psycopg2 if needed
RUN apt-get update && apt-get install -y --no-install-recommends gcc libpq-dev && rm -rf /var/lib/apt/lists/*

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
COPY --from=build-frontend /app/frontend/dist ./frontend/dist

EXPOSE 7860
CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "7860"]
