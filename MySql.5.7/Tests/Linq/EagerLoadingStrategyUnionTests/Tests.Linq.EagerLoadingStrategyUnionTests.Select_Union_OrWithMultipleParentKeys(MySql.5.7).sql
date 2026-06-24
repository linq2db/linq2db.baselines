-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`
FROM
	`Department` `d`
ORDER BY
	`d`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Name`,
	`d`.`Salary`
FROM
	(
		SELECT 101 AS `Item1`, 1 AS `Item2`
		UNION ALL
		SELECT 102, 1
		UNION ALL
		SELECT 103, 1
		UNION ALL
		SELECT 201, 2
		UNION ALL
		SELECT 202, 2
		UNION ALL
		SELECT 203, 2
		UNION ALL
		SELECT 204, 2
		UNION ALL
		SELECT 301, 3
		UNION ALL
		SELECT 302, 3
		UNION ALL
		SELECT 303, 3
		UNION ALL
		SELECT 304, 3
		UNION ALL
		SELECT 305, 3) `k_1`
		INNER JOIN `Employee` `d` ON `d`.`DepartmentId` = `k_1`.`Item1` OR `d`.`DepartmentId` = `k_1`.`Item2`
ORDER BY
	`d`.`Id`

