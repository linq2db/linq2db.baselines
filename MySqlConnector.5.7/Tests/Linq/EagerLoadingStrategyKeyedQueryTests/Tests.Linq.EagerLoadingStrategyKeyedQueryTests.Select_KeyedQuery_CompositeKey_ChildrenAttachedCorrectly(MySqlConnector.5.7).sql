-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`Region`,
	`p`.`Code`,
	`p`.`Name`
FROM
	`CompositeParent` `p`
ORDER BY
	`p`.`Region`,
	`p`.`Code`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`k_1`.`Item1`,
	`k_1`.`Item2`,
	`d`.`Id`,
	`d`.`ParentRegion`,
	`d`.`ParentCode`,
	`d`.`Value`
FROM
	(
		SELECT 1 AS `Item1`, 10 AS `Item2`
		UNION ALL
		SELECT 1, 20
		UNION ALL
		SELECT 2, 10) `k_1`
		INNER JOIN `CompositeChild` `d` ON `d`.`ParentRegion` = `k_1`.`Item1` AND `d`.`ParentCode` = `k_1`.`Item2`
ORDER BY
	`d`.`Id`

