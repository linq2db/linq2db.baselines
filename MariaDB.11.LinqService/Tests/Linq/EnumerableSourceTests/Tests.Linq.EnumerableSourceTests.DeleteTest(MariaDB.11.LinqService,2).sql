﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id`
			UNION ALL
			SELECT 4) `r` ON `t`.`Id` = `r`.`Id`

