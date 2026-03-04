-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `x`.`TestId` ORDER BY `x`.`TestId`) as `RowNumber`,
			`x`.`Id`,
			`x`.`TestId`
		FROM
			`TestTable` `x`
		WHERE
			`x`.`TestId` IN (20, 30)
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`Id` DESC

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`

