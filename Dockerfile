FROM classiccontainers/dosbox

# Retrieve game data from archive.org
ADD --chown=dosbox:dosbox https://archive.org/download/Doom-2/Doom2.zip doom2.zip

# Extract game, remove original zip
RUN unzip doom2.zip && \
    rm doom2.zip

# Copy dosbox conf with Doom 2 autoexec
COPY --chown=dosbox:dosbox dosbox_doom2.conf dosbox_doom2.conf

# Add above dosbox conf to dosbox command line
CMD ["-conf", "dosbox_doom2.conf"]
