FROM scratch

ADD 0e88d5e4e1b208828e7b8e8378d0e75d6aa1e1e44ea49727d3f4b08c9db2e48b.tar.xz /
ADD 13367a1aeab490e565b6b1b2ffe687aa4508fb301c23bbe3bcad0730cfc69d55.tar.xz /
ADD 1455387083f4d8b59429681cc32c2e88f3ba6ce60b25fdcf11362dc7b469224c.tar.xz /
ADD 3127f67e297b3f010e6b70ade5dd54a94b5ba487ca3df4f49d291690b5a9e1c4.tar.xz /
ADD c16e14c669d24b7dfe7830461cf6989fa840cc309ca0009872e6dd1bc1bf0ee9.tar.xz /
ADD cbdcca5f398331ed6f43cc4c80eb48a7e9d842e5e0d1c87ce09decef6f8a786a.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
