FROM python:3.6-alpine

WORKDIR /app

# Install dependencies.
ADD req.txt /app
RUN cd /app && \
    pip install -r req.txt

# Add actual source code.
ADD blockchain.py /app

EXPOSE 5000

CMD ["python", "blockchain.py", "--port", "5000"]
