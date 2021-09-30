BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'Hall%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE 'hall%' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('hall', Lower(`r`.`Diagnosis`)) = 1

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('hall', Lower(`r`.`Diagnosis`)) = 1

