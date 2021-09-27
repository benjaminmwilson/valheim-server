FROM lloesche/valheim-server
WORKDIR valheim-server
COPY default default
COPY run.sh .
CMD ["./run.sh"]
# CMD ["bash"]
