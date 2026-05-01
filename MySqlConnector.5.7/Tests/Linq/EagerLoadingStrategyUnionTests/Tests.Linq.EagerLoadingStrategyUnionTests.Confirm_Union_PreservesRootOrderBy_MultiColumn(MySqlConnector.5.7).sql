-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Name`,
	`c_1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 2 AS `item`
		UNION ALL
		SELECT 4
		UNION ALL
		SELECT 1
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

