FROM scratch

ADD 02cc36e60a127d77610bd66378ac6021bf64c5f7936099d7931ab97c422c96c4.tar.xz /
ADD 45868019175fd7ad56e023f9a62762b4a2c66d85794fe49582732b67338722ac.tar.xz /
ADD 85143df82badfc15f46943ce1a39141ecc58eb92c66be091e9d599f7a0b49e24.tar.xz /
ADD 8eb6f7e7e0067a6e5b3cf2b7ea4cf6c9e90b18a70200dd3628415110bf3709e8.tar.xz /
ADD c21dd6ccb42b03d3de949cbb8098dd6ec6a8ac7f8e3242f26f31c2d57d10c8a3.tar.xz /
ADD d78011bd2a683a4af08f87e11d8c3cd94e2412529dbe17df9746804c54351954.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
