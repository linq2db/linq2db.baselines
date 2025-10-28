BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

WITH RECURSIVE `cte` (`Id`, `Enum1`)
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
		CAST('THIS_IS_ONE' AS CHAR(50))
	FROM
		`cte` `t1`
			INNER JOIN `Issue3360NullInAnchor` `r` ON `t1`.`Id` = `r`.`Id` + 100
)
SELECT
	`t2`.`Id`,
	`t2`.`Enum1`
FROM
	`cte` `t2`

