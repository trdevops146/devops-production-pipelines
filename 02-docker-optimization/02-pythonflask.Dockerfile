FROM python:3.15.1-alpine3.23
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
RUN addgroup -S appgroup && adduser -S -G appgroup appuser
USER appuser
COPY --chown=appuser:appgroup app.py .
EXPOSE 5000
CMD ["python3", "app.py"]