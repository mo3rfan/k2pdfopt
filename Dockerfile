FROM alpine:3.7

RUN apk update
RUN apk upgrade
RUN apk add build-base git
RUN apk add vim
RUN apk add libjpeg-turbo-dev
RUN apk add libpng-dev
RUN apk add zlib-dev
RUN apk add cmake

RUN apk add leptonica-dev
RUN apk add tesseract-dev

RUN apk add jbig2dec-dev
RUN apk add openjpeg-dev
RUN apk add freetype-dev
RUN apk add mupdf-dev
ADD . /k2pdfopt/
WORKDIR /k2pdfopt/build
RUN cmake ..
CMD make
