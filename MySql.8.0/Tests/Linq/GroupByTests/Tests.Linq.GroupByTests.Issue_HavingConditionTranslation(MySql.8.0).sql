﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`MiddleName`,
	COUNT(*)
FROM
	`Person` `t1`
GROUP BY
	`t1`.`MiddleName`
HAVING
	`t1`.`MiddleName` IS NULL OR `t1`.`MiddleName` <> 'Unknown'

