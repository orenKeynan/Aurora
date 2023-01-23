FROM python:latest
COPY ./main.py .
RUN chmod +x ./main.py 
ENTRYPOINT ["./main.py"]