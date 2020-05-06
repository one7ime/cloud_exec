FROM ubuntu
COPY ./install.sh /
RUN chmod 755 /install.sh
RUN /install.sh
<<<<<<< HEAD
CMD [ "nginx", "-g", "daemon off;"]
expose 80
=======

CMD ["nginx","-g","deamon off;"]
EXPOSE 80
>>>>>>> 832bdbd53de6b436dc73d03c30c34dab155f665e
