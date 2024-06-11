FROM python:3.9-slim
WORKDIR /app
COPY . /app/
RUN python3 -v -m pip install --no-cache-dir -v -r requirements.txt
EXPOSE 5000
ENV NAME World
CMD ["python", "app.py"]
