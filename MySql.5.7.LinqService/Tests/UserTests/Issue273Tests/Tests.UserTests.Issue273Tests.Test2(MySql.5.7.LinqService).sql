﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`ID`,
	`x`.`BigIntValue`
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`BigIntValue` = 0 AND `x`.`ID` = 10 OR `x`.`BigIntValue` = 1 AND `x`.`ID` = 10

