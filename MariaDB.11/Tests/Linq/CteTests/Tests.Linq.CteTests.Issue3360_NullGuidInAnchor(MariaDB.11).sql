-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

WITH RECURSIVE `cte` (`Id`, `Guid`)
AS
(
	SELECT
		`p`.`Id`,
		NULL
	FROM
		`Issue3360NullInAnchor` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		`r`.`Guid`
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360NullInAnchor` `r` ON `t1`.`Id` = `r`.`Id` + 100
)
SELECT
	`t2`.`Id`,
	`t2`.`Guid`
FROM
	`cte` `t2`

