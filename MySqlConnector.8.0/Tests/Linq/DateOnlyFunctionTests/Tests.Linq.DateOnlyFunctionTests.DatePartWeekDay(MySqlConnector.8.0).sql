﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	WeekDay(Date_Add(`t`.`TransactionDate`, interval 1 day)) + 1
FROM
	`Transactions` `t`

