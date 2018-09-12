FROM brpedromaia/hadoop
LABEL Pedro Maia Martins de Sousa <brpedromaia@gmail.com> and  Rodolfo Silva <Homaru> 

#######################################################
### Expose Ports
#######################################################

EXPOSE 22 8030 8031 8032 8033 8088 10020 19888

#######################################################
### Entrypoint 
#######################################################

COPY yarn-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
