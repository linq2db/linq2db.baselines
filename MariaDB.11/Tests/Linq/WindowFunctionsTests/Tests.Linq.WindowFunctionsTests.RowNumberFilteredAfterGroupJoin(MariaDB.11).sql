-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	(
		SELECT
			COUNT(*)
		FROM
			`WindowFunctionTestEntity` `o`
		WHERE
			`t1`.`CategoryId` = `o`.`CategoryId`
	)
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `q`.`CategoryId` ORDER BY `q`.`Id` DESC) as `Rank`,
			`q`.`Id`,
			`q`.`CategoryId`
		FROM
			`WindowFunctionTestEntity` `q`
	) `t1`
WHERE
	`t1`.`Rank` <= 1

