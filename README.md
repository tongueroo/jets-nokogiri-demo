# Jets Nokogiri Demo

* Using Jets 3.0

## Test Locally

Start server:

    $ jets server

Curl:

    $ curl localhost:8888
    {"content":"Appendix A: The Compiler Toolchain¶","nokogiri_version":"1.11.1"}

## Test Remotely

Deploy

    $ jets deploy
    ...
    API Gateway Endpoint: https://ykmipzptqc.execute-api.us-west-2.amazonaws.com/dev/

Curl:

    $ curl https://ykmipzptqc.execute-api.us-west-2.amazonaws.com/dev/
    {"content":"Appendix A: The Compiler Toolchain¶","nokogiri_version":"1.11.1"}
    $

Note, use your own API Gateway endpoint that was created.
