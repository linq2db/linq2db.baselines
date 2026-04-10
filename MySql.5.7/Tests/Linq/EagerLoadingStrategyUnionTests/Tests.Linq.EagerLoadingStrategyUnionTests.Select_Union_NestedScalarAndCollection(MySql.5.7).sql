-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`,
	(
		SELECT
			COUNT(*)
		FROM
			`Department` `d`
		WHERE
			`d`.`CompanyId` = `c_1`.`Id`
	)
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Name`,
	`d`.`Salary`
FROM
	`Department` `m_1`
		INNER JOIN `Employee` `d` ON `d`.`DepartmentId` = `m_1`.`Id`
WHERE
	`m_1`.`CompanyId` IN (1, 2, 3)
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`d`.`CompanyId`,
	`d`.`Id`,
	`d`.`Name`,
	(
		SELECT
			COUNT(*)
		FROM
			`Employee` `e`
		WHERE
			`e`.`DepartmentId` = `d`.`Id`
	)
FROM
	`Department` `d`
WHERE
	`d`.`CompanyId` IN (1, 2, 3)
ORDER BY
	`d`.`Id`

