FROM docker.io/library/node:lts-alpine
ARG ARTIFACT_FILES="00_thesis.pdf"
MAINTAINER Florian Wagner
RUN apk update -q && apk add -q texlive-full gnuplot make biber && apk add -q biblatex
WORKDIR /data
COPY fsroot /
RUN chmod +x /bin/latex-grunt.sh
RUN chmod +x /bin/generic.sh
RUN cd /tmp/latexbuild && npm i -g grunt && npm i
ENTRYPOINT [ "" ]
CMD [ "/bin/latex-grunt.sh" ]