FROM python:3.7.3-stretch

# Working Directory
WORKDIR /housing-price-prediction-app

# Copy source code to working directory
COPY 'requirements.txt' .

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt


COPY . .

#CMD ["model.py"]

ENTRYPOINT ["python", "app.py"]