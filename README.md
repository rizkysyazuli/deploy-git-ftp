# Git-ftp for CI environments

## How to use

Run:

    docker run -it --rm -v $PWD:/repo rzky/deploy-git-ftp

Deploy:

    # git ftp push --auto-init -u $USERNAME -p $PASSWORD ftp://$HOST/$PATH/

For more info, check the [git-ftp docs](https://github.com/git-ftp/git-ftp).

## Development

Build:

    docker build -t rzky/deploy-git-ftp .

Push:

    docker push rzky/deploy-git-ftp