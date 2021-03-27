FROM python:3.8-slim
RUN sudo apt-get install python3-numpy
RUN pip install pandas
RUN pip install bs4
RUN pip install requests
WORKDIR /usr/src/sched
COPY . .
CMD ["python3","runner.py","barcode","pin","session_code","request_time"]