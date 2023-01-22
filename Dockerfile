FROM python:latest
COPY ./main.py .
CMD chmod +x ./main.py 
ENTRYPOINT ["./main.py"]