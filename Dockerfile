FROM budtmo/docker-android-real-device

COPY  Dependencies.sh .
# COPY  Framework3 .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh



EXPOSE 4723
EXPOSE 5554
EXPOSE 5555
EXPOSE 6080



# RUN ["npm","run","cloud"]
