﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`MoneyValue`,
	`r`.`DateTimeValue`,
	`r`.`BoolValue`,
	`r`.`GuidValue`,
	`r`.`BinaryValue`,
	`r`.`SmallIntValue`,
	`r`.`StringValue`
FROM
	`LinqDataTypes` `r`
WHERE
	NOT `r`.`BoolValue`

