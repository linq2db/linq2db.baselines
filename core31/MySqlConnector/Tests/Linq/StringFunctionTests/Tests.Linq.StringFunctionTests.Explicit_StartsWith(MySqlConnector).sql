BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(`r`.`Diagnosis`) LIKE 'hall%' ESCAPE '~'

