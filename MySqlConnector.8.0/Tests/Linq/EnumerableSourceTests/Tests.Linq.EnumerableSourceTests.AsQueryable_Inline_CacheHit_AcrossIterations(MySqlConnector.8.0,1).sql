-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 10 AS `Id`, 'Data 10' AS `Data`
		UNION ALL
		SELECT 11, 'Data 11') `t1`

