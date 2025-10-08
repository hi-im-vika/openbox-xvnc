FROM alpine:3
RUN apk update && apk add \
  supervisor \
  tigervnc \
  openbox \
  fontconfig \
  adwaita-fonts \
  adwaita-icon-theme
RUN fc-cache -f
COPY supervisord.conf /etc/supervisor/conf.d/
ENV VNC_DESKTOP_NAME="Xvnc"
ENV VNC_GEOMETRY=1280x800
COPY app/ /app/
CMD ["/app/main.sh"]
