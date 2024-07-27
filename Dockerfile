RUN pip3 install django --break-system-packages

COPY . .

RUN python3 manage.py migrate

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]