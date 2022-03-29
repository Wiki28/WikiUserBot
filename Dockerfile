FROM wiki12/wikiuserbot:buster

RUN git clone -b Wiki-Userbot https://github.com/wii28/WikiUserbot /home/wikiuserbot/ \
    && chmod 777 /home/wikiuserbot \
    && mkdir /home/wikiuserbot/bin/

COPY ./sample_config.env ./config.env* /home/wikiuserbot/

WORKDIR /home/wikiuserbot/

CMD ["python3", "-m", "userbot"]
