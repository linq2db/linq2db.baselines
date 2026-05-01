-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`Company` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `k_1`.`item` = `d`.`CompanyId` AND `d`.`Id` > `k_1`.`item`

