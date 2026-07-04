FROM nginx:alpine

# Build arguments
ARG NAMA
ARG NIM
ARG PRODI
ARG KAMPUS
ARG MINAT
ARG ALASAN
ARG CITA

# Copy website
COPY html/ /usr/share/nginx/html/

# Replace placeholder
RUN sed -i "s|NAMA_PLACEHOLDER|${NAMA}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|NIM_PLACEHOLDER|${NIM}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|PRODI_PLACEHOLDER|${PRODI}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|KAMPUS_PLACEHOLDER|${KAMPUS}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|MINAT_PLACEHOLDER|${MINAT}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|ALASAN_PLACEHOLDER|${ALASAN}|g" /usr/share/nginx/html/index.html && \
    sed -i "s|CITA_PLACEHOLDER|${CITA}|g" /usr/share/nginx/html/index.html

EXPOSE 80
