FROM rclone/rclone
ENV TZ Asia/Kolkata
COPY index.html warish.sh .
RUN chmod +x warish.sh
ENTRYPOINT [ "./warish.sh" ]
