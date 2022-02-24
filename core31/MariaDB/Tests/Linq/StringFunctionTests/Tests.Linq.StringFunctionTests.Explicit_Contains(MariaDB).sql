BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Paranoid%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%paranoid%' ESCAPE '~'

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('paranoid', Lower(`r`.`Diagnosis`)) > 0

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('paranoid', Lower(`r`.`Diagnosis`)) > 0

