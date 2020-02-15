FROM appropriate/curl:latest

LABEL maintainer="Rizky Syazuli <rzky@me.com>"

# Install Git
RUN apk --update add git less openssh bash && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

# Install git-ftp manually
RUN cd /tmp && \
    git clone https://github.com/git-ftp/git-ftp.git && \
    cd git-ftp && \
    tag="$(git tag | grep '^[0-9]*\.[0-9]*\.[0-9]*$' | tail -1)" && \
    git checkout "$tag" && \
    mv git-ftp /usr/local/bin && chmod +x /usr/local/bin

CMD ["/bin/sh"]