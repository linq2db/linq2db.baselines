BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE '%persecution' ESCAPE '~'

