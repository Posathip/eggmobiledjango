FROM python:3.9.6
 
WORKDIR /app
 
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
 
COPY . .
 
EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]