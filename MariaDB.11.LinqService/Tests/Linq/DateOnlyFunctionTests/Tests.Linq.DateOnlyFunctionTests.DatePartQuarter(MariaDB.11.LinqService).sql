﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Extract(quarter from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

