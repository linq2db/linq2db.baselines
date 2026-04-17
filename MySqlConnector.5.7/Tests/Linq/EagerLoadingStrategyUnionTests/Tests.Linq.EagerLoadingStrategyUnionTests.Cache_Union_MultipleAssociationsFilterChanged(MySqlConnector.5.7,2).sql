-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @maxId Int32
SET     @maxId = 3

SELECT
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
WHERE
	`c_1`.`Id` <= @maxId
ORDER BY
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
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `k_1`.`item`
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
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
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

