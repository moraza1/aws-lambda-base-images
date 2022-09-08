FROM scratch

ADD 2df51cdb01abdca2696fb9d26456b7a55e10d67f39a34481b7987e327b7a1332.tar.xz /
ADD 4851c7cdb934730bbed9e07bbe3ac69fbe0559c47bcd6c04c9a214fc968174c7.tar.xz /
ADD 58ffedab6bdb42dc53cc5a6eb50029f863792fd61bea07e23ed92f235d6b911c.tar.xz /
ADD 5e0f6ab71f87d13ca38edcc767869b3bc1d65cc3f317a1c5b6dbcba42eadffc3.tar.xz /
ADD c16e14c669d24b7dfe7830461cf6989fa840cc309ca0009872e6dd1bc1bf0ee9.tar.xz /
ADD d82ea585b0519d1497816b4e0784fd1b5b065cc2f2f2a1e4f0e251992a1d6267.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
