-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
WITH RECURSIVE `cte` (`Id`, `Str`)
AS
(
	SELECT
		`p`.`Id`,
		`p`.`Str`
	FROM
		`CteStringEnumTable` `p`
	UNION ALL
	SELECT
		`t1`.`Id`,
		CAST('THIS_IS_TWO' AS CHAR(50))
	FROM
		`cte` `t1`
			INNER JOIN `CteStringEnumTable` `r` ON `t1`.`Id` = `r`.`Id` + 1
)
SELECT
	`t2`.`Id`,
	`t2`.`Str`
FROM
	`cte` `t2`

