﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%Persecution' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	`r`.`Diagnosis` COLLATE utf8_bin LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(Lower(`r`.`Diagnosis`)) LIKE '%persecution' ESCAPE '~'

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Patient` `r`
WHERE
	Lower(Lower(`r`.`Diagnosis`)) LIKE '%persecution' ESCAPE '~'

