BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('persecution', Lower(`r`.`Diagnosis`), Length(`r`.`Diagnosis`) - 10) = (Length(`r`.`Diagnosis`) - 10)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('persecution', Lower(`r`.`Diagnosis`), Length(`r`.`Diagnosis`) - 10) = (Length(`r`.`Diagnosis`) - 10)

