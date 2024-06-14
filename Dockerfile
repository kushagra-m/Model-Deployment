# FROM python:3.10.12
# ADD requirements.txt /
# RUN pip install -r /requirements.txt
# ADD finalized_model.sav /
# ADD main.py /
# ENV TF_DISABLE_TFTRT=1
# ENV PYTHONUNBUFFERED=1
# CMD [ "python", "./main.py" ]

FROM python:3.10.12
WORKDIR /Deploy
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV TF_DISABLE_TFTRT=1
ENV PYTHONUNBUFFERED=1
CMD ["python", "main.py"]

