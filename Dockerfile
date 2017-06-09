FROM tobig77/docker-hugo

RUN \
	mkdir -p /aws && \
	apk -Uuv add openssh groff less python py-pip git && \
  pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*
