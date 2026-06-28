-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @maxId Int32
SET     @maxId = 2

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
WHERE
	`c_1`.`Id` <= @maxId
ORDER BY
	`c_1`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
		SELECT 2) `k_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`DepartmentId`,
	`d`.`Name`,
	`d`.`Rate`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2) `k_1`
		INNER JOIN `Contractor` `d` ON EXISTS(
			SELECT
				*
			FROM
				`Department` `d_1`
			WHERE
				`d_1`.`CompanyId` = `k_1`.`item` AND `d_1`.`Id` = `d`.`DepartmentId`
		)
ORDER BY
	`d`.`Id`

