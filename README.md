# bitrix-dev

based on https://github.com/PHPtoday-ru/docker-local-conf

# TODO
## create bitrix user

```
SELECT user FROM mysql.user;
CREATE USER 'bitrix' IDENTIFIED BY 'bitrix';
GRANT ALL on sitemanager.* TO 'bitrix';
```

## site_checker
```
Error! The required extensions are not installed:
Free Type Text
GD JPEG support
```
```
Error! The value of max_input_vars must be 10000 or greater. The current value is: 1000
```
```
E-mail sending	Error! The test has failed to complete.
```
```
Error! innodb_strict_mode=ON, OFF is required
```
