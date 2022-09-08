FROM scratch

ADD 19d26cd77ebd0ca89e7ba1349700731bacca2ff89ce2723b381ea1db312afcdb.tar.xz /
ADD 19f09529a4382e0801889df38204fb4a5ce6192cae24d7cbc360c680678f8fdc.tar.xz /
ADD 55e1ad6ff236a8669527ecd110d3eca1d69cd6f80a174a5cb7d667f3fee8bfa1.tar.xz /
ADD 8eb6f7e7e0067a6e5b3cf2b7ea4cf6c9e90b18a70200dd3628415110bf3709e8.tar.xz /
ADD b775fa0835752255e1f7c89c179ad9f41b6c7966ca1a629300dff53465519d10.tar.xz /
ADD efbcaf41e281fce1c6c654b8d9e09a0ba4b80bbb9742faf3c6cda883504609d6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
