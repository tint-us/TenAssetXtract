FROM nginx:alpine

# Hapus default index bawaan nginx
RUN rm -f /usr/share/nginx/html/*

# Copy aplikasi single-page kita
COPY index.html /usr/share/nginx/html/index.html

# (Opsional) kalau nanti ada asset lain:
# COPY assets/ /usr/share/nginx/html/assets/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
