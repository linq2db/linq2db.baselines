-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 0 AS `Id`, 'Data 0' AS `Data`
		UNION ALL
		SELECT 1, 'Data 1') `t1`
ORDER BY
	`t1`.`Id`

