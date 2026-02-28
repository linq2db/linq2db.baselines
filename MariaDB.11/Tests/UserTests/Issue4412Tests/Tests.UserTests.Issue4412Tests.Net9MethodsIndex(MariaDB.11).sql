-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Item1`,
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	(
		SELECT
			CAST(ROW_NUMBER() OVER (ORDER BY `item_1`.`Id`) AS SIGNED) - 1 as `Item1`,
			`item_1`.`Id`,
			`item_1`.`TestId`
		FROM
			`TestTable` `item_1`
	) `t1`
ORDER BY
	`t1`.`Item1`

