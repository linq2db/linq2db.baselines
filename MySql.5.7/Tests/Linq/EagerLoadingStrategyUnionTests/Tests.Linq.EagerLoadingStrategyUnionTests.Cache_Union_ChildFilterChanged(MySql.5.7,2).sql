-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @minSalary Int32
SET     @minSalary = 45000

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
	`m_1`.`CompanyId` IN (1, 2, 3) AND `d`.`Salary` > @minSalary
ORDER BY
	`d`.`Id`,
	`m_1`.`Id`

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

