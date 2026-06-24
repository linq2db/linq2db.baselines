-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`d`.`Id`
FROM
	`Department` `d`
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Value`
FROM
	(
		SELECT 101 AS `item`
		UNION ALL
		SELECT 102
		UNION ALL
		SELECT 103) `k_1`
		INNER JOIN `ConvA` `d` ON `d`.`DepartmentId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Value`
FROM
	(
		SELECT 101 AS `item`
		UNION ALL
		SELECT 102
		UNION ALL
		SELECT 103) `k_1`
		INNER JOIN `ConvB` `d` ON `d`.`DepartmentId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

