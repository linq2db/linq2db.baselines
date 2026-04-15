-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`d`.`Id`,
	`d`.`Name`
FROM
	`Department` `d`
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Name`,
	`d`.`Salary`
FROM
	(
		SELECT 101 AS `item`
		UNION ALL
		SELECT 102
		UNION ALL
		SELECT 103) `k_1`
		INNER JOIN `Employee` `d` ON `d`.`DepartmentId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Name`,
	`d`.`Rate`
FROM
	(
		SELECT 101 AS `item`
		UNION ALL
		SELECT 102
		UNION ALL
		SELECT 103) `k_1`
		INNER JOIN `Contractor` `d` ON `d`.`DepartmentId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

