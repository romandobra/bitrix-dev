sed -i -e 's/PHP_IMAGE: 8.2-fpm-bullseye/PHP_IMAGE: 7.4-fpm/g' docker-compose.yml
sed -i -e 's/PHP_EXT_CONF_FIX:/PHP_EXT_CONF_FIX: -dir=\/usr\/include\//g' docker-compose.yml
