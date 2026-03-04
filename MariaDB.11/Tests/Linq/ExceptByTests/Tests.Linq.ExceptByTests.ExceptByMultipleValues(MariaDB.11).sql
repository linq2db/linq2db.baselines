-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `x`.`TestId` ORDER BY `x`.`TestId`) as `RowNumber`,
			`x`.`TestId`,
			`x`.`Id`
		FROM
			`TestTable` `x`
		WHERE
			`x`.`TestId` NOT IN (20, 30)
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`TestId`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`

