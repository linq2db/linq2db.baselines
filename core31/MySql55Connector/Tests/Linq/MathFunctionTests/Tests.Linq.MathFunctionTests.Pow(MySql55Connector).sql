﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Floor(Power(`p`.`MoneyValue`, 3)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

