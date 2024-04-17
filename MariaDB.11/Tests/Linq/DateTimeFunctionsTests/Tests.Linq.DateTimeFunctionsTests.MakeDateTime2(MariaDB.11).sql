﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Cast(Concat('2010-', Lpad(`p`.`ID`,2,'0'), '-01 20:35:44') as DateTime) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Extract(year from `t`.`c1`) = 2010

