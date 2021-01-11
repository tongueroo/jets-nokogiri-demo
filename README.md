# Jets Nokogiri Demo

* Demo of nokogiri.
* This project uses Jets 3.0 and Ruby 2.7.

## Test Locally

Start server locally:

    $ jets server

Curl test:

    $ curl localhost:8888 ; echo
    {"content":"Appendix A: The Compiler Toolchain¶","nokogiri_version":"1.11.1","jets_version":"3.0.0","ruby_version":"2.7.2"}
    $ curl -s localhost:8888 | jq
    {
      "content": "Appendix A: The Compiler Toolchain¶",
      "nokogiri_version": "1.11.1",
      "jets_version": "3.0.0",
      "ruby_version": "2.7.2"
    }
    $

## Test Remotely

Deploy to AWS:

    $ jets deploy
    ...
    API Gateway Endpoint: https://ykmipzptqc.execute-api.us-west-2.amazonaws.com/dev/

Note, the API Gateway endpoint that was created.

Curl test:

    $ curl https://ykmipzptqc.execute-api.us-west-2.amazonaws.com/dev/ ; echo
    {"content":"Appendix A: The Compiler Toolchain¶","nokogiri_version":"1.11.1","jets_version":"3.0.0","ruby_version":"2.7.2"}
    $ curl -s https://ykmipzptqc.execute-api.us-west-2.amazonaws.com/dev/ | jq
    {
      "content": "Appendix A: The Compiler Toolchain¶",
      "nokogiri_version": "1.11.1",
      "jets_version": "3.0.0",
      "ruby_version": "2.7.2"
    }
    $
