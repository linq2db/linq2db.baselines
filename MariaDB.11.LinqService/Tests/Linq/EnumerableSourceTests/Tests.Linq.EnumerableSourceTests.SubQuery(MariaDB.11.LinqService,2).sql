﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`TableToInsert` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 3 AS `Id`, 'Janet' AS `Value`, 3 AS `Id0`, 'Janet' AS `Value0`
				UNION ALL
				SELECT 4, 'Doe', 4, 'Doe') `r`
		WHERE
			`t`.`Id` = `r`.`Id` AND (`t`.`Value` = `r`.`Value` OR `t`.`Value` IS NULL AND `r`.`Value` IS NULL)
	)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

