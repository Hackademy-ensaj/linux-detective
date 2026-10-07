FROM ubuntu:24.04
RUN apt-get update && apt-get install -y --no-install-recommends coreutils grep findutils nano less man-db \
    && rm -rf /var/lib/apt/lists/*
RUN useradd -m detective
USER detective
WORKDIR /home/detective/linux-detective
COPY --chown=detective . .
RUN ./setup.sh
CMD ["bash"]
