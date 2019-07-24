release:
	tar czf /tmp/sensu-show-users-check_${VERSION}_linux_amd64.tar.gz bin/ etc/ 
	sum=$$(sha512sum /tmp/sensu-show-users-check_${VERSION}_linux_amd64.tar.gz | cut -d ' ' -f 1); \
	f=$$(basename sensu-show-users-check_${VERSION}_linux_amd64.tar.gz); \
	echo $$sum $${f} > /tmp/sensu-show-users-check_${VERSION}_sha512_checksums.txt; \
	echo $$sum;
