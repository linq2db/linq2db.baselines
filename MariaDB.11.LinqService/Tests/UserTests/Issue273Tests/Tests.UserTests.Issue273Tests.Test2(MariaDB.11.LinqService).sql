﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`x`.`ID`,
	`x`.`BigIntValue`
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`BigIntValue` = 0 AND `x`.`ID` = 10 OR `x`.`BigIntValue` = 1 AND `x`.`ID` = 10

