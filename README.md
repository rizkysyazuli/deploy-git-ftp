# Git-ftp for CI environments

Build:

    docker build -t rzky/deploy-git-ftp .

Run:

    docker run -it --rm rzky/deploy-git-ftp

Deploy:

    # git ftp push --auto-init -u $USERNAME -p $PASSWORD ftp://$HOST/$PATH/

For more info, check the [git-ftp docs](https://github.com/git-ftp/git-ftp).