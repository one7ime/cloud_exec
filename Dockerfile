FROM ubuntu
COPY ./install.sh /
RUN chmod 755 /install.sh
RUN /install.sh

CMD ["nginx","-g","deamon off;"]
EXPOSE 80
