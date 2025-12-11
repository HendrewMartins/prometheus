FROM prom/prometheus:latest
 
# Copia o arquivo de config
COPY prometheus.yml /etc/prometheus/prometheus.yml
 
# Porta exposta
EXPOSE 9090
 
# Comando default do Prometheus
CMD [ 
  "--config.file=/etc/prometheus/prometheus.yml", 
  "--storage.tsdb.path=/prometheus" 
]
