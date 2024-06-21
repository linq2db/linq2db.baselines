﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `cte` (`FirstName`)
AS
(
	SELECT
		`p`.`FirstName`
	FROM
		`Person` `p`
	UNION ALL
	SELECT
		Concat(`r`.`FirstName`, '/', `r`.`LastName`)
	FROM
		`cte` `t1`
			INNER JOIN `Person` `r` ON `t1`.`FirstName` = `r`.`LastName`
)
SELECT
	`t2`.`FirstName`
FROM
	`cte` `t2`

