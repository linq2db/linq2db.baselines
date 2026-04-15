-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`d`.`Id`,
	`d`.`Name`
FROM
	`Department` `d`
ORDER BY
	`d`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

