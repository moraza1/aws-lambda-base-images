FROM scratch
ADD x86_64/72e893415eedd2ba099bcaad2157d19a5d684af5061fa95b2c6b55e5cb2c4725.tar.xz /
ADD x86_64/8eb6f7e7e0067a6e5b3cf2b7ea4cf6c9e90b18a70200dd3628415110bf3709e8.tar.xz /
ADD x86_64/9ec17e2f2abe4d9cc5174a0e6535e26fefbd6278c78205efac0f1f0ad1b2a791.tar.xz /
ADD x86_64/b13fbad74d7a705e8bc619edd7f633447018bf9ee5e8dbd29ae57c2c62031c4b.tar.xz /
ADD x86_64/ba69f0d9d233c7de5e5041c3688d3a0a7796bab655c0216d1e0319520d8f6911.tar.xz /
ADD x86_64/e4002842229124908eb06aaab261d026d06fa69a8a462d3cb05fb498038aeef6.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
