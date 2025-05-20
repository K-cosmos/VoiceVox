FROM voicevox/voicevox_engine:latest

EXPOSE 50021

CMD ["./run.sh"]

FROM ubuntu:20.04

# ファイルを含めてビルドコンテキストに入れておく
COPY ./run.sh /opt/voicevox_engine/run.sh
RUN chmod +x /opt/voicevox_engine/run.sh

ENTRYPOINT ["/opt/voicevox_engine/run.sh"]
