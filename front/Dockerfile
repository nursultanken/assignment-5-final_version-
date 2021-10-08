FROM python:3.6
EXPOSE 3001/tcp
WORKDIR /app
RUN mkdir /app/templates
COPY templates /app/templates
COPY front.py requirements.txt Dockerfile /app/
RUN pip install -r requirements.txt
CMD python front.py
