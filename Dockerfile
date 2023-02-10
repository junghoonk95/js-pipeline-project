FROM python:3.9

WORKDIR /app

COPY ./app/requirements.txt /app/requirements.txt

RUN pip --trusted-host pypi.org --trusted-host files.pythonhosted.org install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]


#--trusted-host pypi.org install