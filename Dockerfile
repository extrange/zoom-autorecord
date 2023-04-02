FROM kastldratza/zoomrec

USER 0

RUN apt update && \
    apt install --no-install-recommends -y \
    git \
    tigervnc-standalone-server \
    unzip \
    wget2 \
    xterm

# Copy scripts
COPY start.sh /start.sh

RUN chmod a+x /start.sh

# Subsequent instructions use zoomrec user
USER zoomrec

WORKDIR /home/zoomrec

# Setup noVNC for browser VNC access
RUN git clone --depth 1 https://github.com/novnc/noVNC.git && \
    chmod +x ./noVNC/utils/novnc_proxy && \
    git clone --depth 1 https://github.com/novnc/websockify.git ./noVNC/utils/websockify

# Override default noVNC file listing
COPY index.html ./noVNC

CMD [ "/start.sh" ]