FROM alpine:latest 

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python \ 
	&& python3 -m ensurepip && pip3 install --no-cache --upgrade pip setuptools \ 
	&& pip3 install pandas \
	&& mkdir -p /home/juanjogamez/script_prueba/F1_CSV

COPY ./script.py /
COPY ./F1_CSV /home/juanjogamez/script_prueba/F1_CSV

ENTRYPOINT ["python"]
CMD ["script.py"]
