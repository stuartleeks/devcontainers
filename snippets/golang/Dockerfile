# Set up GOPATH
ENV GOPATH __DEVCONTAINER_HOME__/go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

#Set up go tools
RUN \
    # --> Delve for debugging
    go get github.com/go-delve/delve/cmd/dlv@v1.6.0 \
    # --> Go language server
    && go get golang.org/x/tools/gopls@v0.6.6 \
    # --> Go symbols and outline for go to symbol support and test support 
    && go get github.com/acroca/go-symbols@v0.1.1 && go get github.com/ramya-rao-a/go-outline@7182a932836a71948db4a81991a494751eccfe77 \
    # --> GolangCI-lint
    && curl -sfL https://install.goreleaser.com/github.com/golangci/golangci-lint.sh | sed 's/tar -/tar --no-same-owner -/g' | sh -s -- -b $(go env GOPATH)/bin
