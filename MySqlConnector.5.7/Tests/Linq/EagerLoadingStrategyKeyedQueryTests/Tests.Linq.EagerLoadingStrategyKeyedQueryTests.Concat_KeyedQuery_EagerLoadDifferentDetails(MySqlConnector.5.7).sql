-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`Kind`,
	`t1`.`Kind` = 'Active'
FROM
	(
		SELECT
			`d`.`Id`,
			`d`.`Name`,
			CAST('Active' AS CHAR(255)) as `Kind`
		FROM
			`Department` `d`
		WHERE
			`d`.`IsActive`
		UNION ALL
		SELECT
			`d_1`.`Id`,
			`d_1`.`Name`,
			CAST('Inactive' AS CHAR(255)) as `Kind`
		FROM
			`Department` `d_1`
		WHERE
			NOT `d_1`.`IsActive`
	) `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`Name`
FROM
	(
		SELECT 101 AS `Item1`, 'Active' AS `Item2`
		UNION ALL
		SELECT 103, 'Active'
		UNION ALL
		SELECT 201, 'Active'
		UNION ALL
		SELECT 203, 'Active'
		UNION ALL
		SELECT 301, 'Active'
		UNION ALL
		SELECT 303, 'Active'
		UNION ALL
		SELECT 305, 'Active'
		UNION ALL
		SELECT 102, 'Inactive'
		UNION ALL
		SELECT 202, 'Inactive'
		UNION ALL
		SELECT 204, 'Inactive'
		UNION ALL
		SELECT 302, 'Inactive'
		UNION ALL
		SELECT 304, 'Inactive') `k_1`
		INNER JOIN `Employee` `d` ON `k_1`.`Item1` = `d`.`DepartmentId` AND `k_1`.`Item2` = 'Active'
WHERE
	`d`.`Salary` > 45000
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`Name`
FROM
	(
		SELECT 101 AS `Item1`, 'Active' AS `Item2`
		UNION ALL
		SELECT 103, 'Active'
		UNION ALL
		SELECT 201, 'Active'
		UNION ALL
		SELECT 203, 'Active'
		UNION ALL
		SELECT 301, 'Active'
		UNION ALL
		SELECT 303, 'Active'
		UNION ALL
		SELECT 305, 'Active'
		UNION ALL
		SELECT 102, 'Inactive'
		UNION ALL
		SELECT 202, 'Inactive'
		UNION ALL
		SELECT 204, 'Inactive'
		UNION ALL
		SELECT 302, 'Inactive'
		UNION ALL
		SELECT 304, 'Inactive') `k_1`
		INNER JOIN `Contractor` `d` ON `k_1`.`Item1` = `d`.`DepartmentId` AND `k_1`.`Item2` = 'Inactive'
ORDER BY
	`d`.`Id`

