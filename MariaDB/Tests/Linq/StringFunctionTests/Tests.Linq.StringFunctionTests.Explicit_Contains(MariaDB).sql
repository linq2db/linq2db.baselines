BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('paranoid', Lower(`r`.`Diagnosis`)) > 0

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('paranoid', Lower(`r`.`Diagnosis`)) > 0

