FROM scratch

ADD 0d4713c6037d9ed2b3d3754dd3a01931a9ad06c5283757a9a557fd714c8cdad6.tar.xz /
ADD 24254d6c96a5ddd6b46205392c305dd49e2dd362cfebd0ea043a8270f6ea1cf7.tar.xz /
ADD 3467490b0a8e8ad3434a306414d15bfa05d861a6272fde9a96888cd1aca45795.tar.xz /
ADD 98c7fc434aa6a95e1437af9cabe05b92068b004e0d5934417ded1de2bda7fd26.tar.xz /
ADD aceb92114c9d57c6f0079dce70599e4e9e27f136de1c78590c0f28b26d19ca94.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
