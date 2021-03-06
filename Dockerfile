FROM python:3.6
COPY ./requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir homeassistant==0.61.1
RUN mkdir /config && echo "0.61.1" >> /config/.HA_VERSION
CMD hass -c /config
