FROM python

COPY ./abc.sh /app

RUN chmod +x abc.sh

WORKDIR /app

ENTRYPOINT [ "sh", "-c", "echo ahmet" ]
ENTRYPOINT [ "./abc.sh" ]

CMD ["apt-get update"] 
# 

