FROM python:3.10-slim

RUN apt update && apt upgrade -y
RUN apt install git -y

WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "bot.py"]
