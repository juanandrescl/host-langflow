FROM langflowai/langflow:latest

EXPOSE 7860

CMD ["langflow run --env-file .env", "--host", "0.0.0.0", "--port", "7860"]

