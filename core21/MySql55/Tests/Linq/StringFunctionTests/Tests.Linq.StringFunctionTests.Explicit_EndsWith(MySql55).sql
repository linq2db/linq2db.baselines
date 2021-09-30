BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('persecution', Lower(`r`.`Diagnosis`), Length(`r`.`Diagnosis`) - 10) = (Length(`r`.`Diagnosis`) - 10)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	LOCATE('persecution', Lower(`r`.`Diagnosis`), Length(`r`.`Diagnosis`) - 10) = (Length(`r`.`Diagnosis`) - 10)

