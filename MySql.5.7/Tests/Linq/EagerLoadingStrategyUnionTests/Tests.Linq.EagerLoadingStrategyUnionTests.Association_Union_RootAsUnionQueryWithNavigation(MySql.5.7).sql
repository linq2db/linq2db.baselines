-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`d`.`CompanyId`,
	`d`.`Id`,
	`d`.`Name`
FROM
	`Department` `d`
WHERE
	`d`.`CompanyId` IN (1, 2, 3)
ORDER BY
	`d`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
		SELECT 103
		UNION ALL
		SELECT 201
		UNION ALL
		SELECT 202
		UNION ALL
		SELECT 203
		UNION ALL
		SELECT 204
		UNION ALL
		SELECT 301
		UNION ALL
		SELECT 302
		UNION ALL
		SELECT 303
		UNION ALL
		SELECT 304
		UNION ALL
		SELECT 305) `k_1`
		INNER JOIN `Employee` `d` ON `k_1`.`item` = `d`.`DepartmentId`
ORDER BY
	`d`.`Id`

