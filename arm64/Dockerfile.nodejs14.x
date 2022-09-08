FROM scratch

ADD 210e7aa2f3702e9c1878833367980401ba916f05f1aacea6c9c456e369280759.tar.xz /
ADD 30d71ca18aa10d340f324b572d22e387f299359a77bc533e33c2f6d6ca0db4a8.tar.xz /
ADD 6b2528be564d83f850ef815df37bc221ab179c5e398d57325b5a4d11ba31ca60.tar.xz /
ADD 895482e4eada96cd11f316198164b297284ca109c669a55b746f043ed545ef4c.tar.xz /
ADD bf920355a1a0e68f7be5bcce944265e911f000756a62d1f6e461622012268def.tar.xz /
ADD c16e14c669d24b7dfe7830461cf6989fa840cc309ca0009872e6dd1bc1bf0ee9.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
