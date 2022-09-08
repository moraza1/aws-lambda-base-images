FROM scratch
ADD x86_64/589622683b4faa03cfc54e8152bc1a7c156b79303027e5cbebe16c9412da5c0e.tar.xz /
ADD x86_64/6e072a456cea53c72b6905180c0a34766ec1258672abb2b1bfc818f72240761a.tar.xz /
ADD x86_64/7714af68d51b96d9f83bfbb4a54180a9b6c3d05049e9f13deb8e7843097838bf.tar.xz /
ADD x86_64/7a4eec9134b12b188367f31decf048ede825c2bc07693dc2375146d54966d3eb.tar.xz /
ADD x86_64/8eb6f7e7e0067a6e5b3cf2b7ea4cf6c9e90b18a70200dd3628415110bf3709e8.tar.xz /
ADD x86_64/b91658ce6a37fb9abc7d44c2c5e20f875725f805894dbc41dc907b50d21da307.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
