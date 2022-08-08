﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat(Lpad(Extract(year from `p`.`DateTimeValue`),4,'0'), '-10-01') as Date) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(month from `t`.`c1`) = 10

