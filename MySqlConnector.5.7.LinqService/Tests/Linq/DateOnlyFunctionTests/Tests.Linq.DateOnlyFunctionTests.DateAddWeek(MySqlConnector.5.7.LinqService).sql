﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Date_Add(`t`.`TransactionDate`, Interval -1 Week)
FROM
	`Transactions` `t`

