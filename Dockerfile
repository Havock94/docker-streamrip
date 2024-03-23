# Utilizza un'immagine base di Python
FROM python:alpine

# Imposta la directory di lavoro nel container
WORKDIR /streamrip

# Aggiorna i pacchetti e installa ffmpeg, necessario per alcune funzionalità di streamrip
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Installa streamrip
RUN pip3 install streamrip --upgrade

# Comando eseguito all'avvio del container
CMD ["sleep", "Infinity"]