﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	Coalesce(`p`.`Value1`, 0) > 0

