-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Label`,
	`t1`.`Id`,
	`t1`.`Label` = 'ActiveOnly'
FROM
	(
		SELECT
			CAST('ActiveOnly' AS CHAR(255)) as `Label`,
			`c_1`.`Id`
		FROM
			`Company` `c_1`
		UNION ALL
		SELECT
			CAST('All' AS CHAR(255)) as `Label`,
			`c_2`.`Id`
		FROM
			`Company` `c_2`
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 1 AS `Item1`, 'ActiveOnly' AS `Item2`
		UNION ALL
		SELECT 2, 'ActiveOnly'
		UNION ALL
		SELECT 3, 'ActiveOnly'
		UNION ALL
		SELECT 1, 'All'
		UNION ALL
		SELECT 2, 'All'
		UNION ALL
		SELECT 3, 'All') `k_1`
		INNER JOIN `Department` `d` ON `k_1`.`Item1` = `d`.`CompanyId` AND `k_1`.`Item2` = 'ActiveOnly'
WHERE
	`d`.`IsActive`
ORDER BY
	`d`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 1 AS `Item1`, 'ActiveOnly' AS `Item2`
		UNION ALL
		SELECT 2, 'ActiveOnly'
		UNION ALL
		SELECT 3, 'ActiveOnly'
		UNION ALL
		SELECT 1, 'All'
		UNION ALL
		SELECT 2, 'All'
		UNION ALL
		SELECT 3, 'All') `k_1`
		INNER JOIN `Department` `d` ON `k_1`.`Item1` = `d`.`CompanyId` AND `k_1`.`Item2` = 'All'
ORDER BY
	`d`.`Id`

