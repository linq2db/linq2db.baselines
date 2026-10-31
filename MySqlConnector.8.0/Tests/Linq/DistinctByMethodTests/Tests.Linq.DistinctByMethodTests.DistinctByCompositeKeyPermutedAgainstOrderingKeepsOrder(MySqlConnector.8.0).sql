-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`ParentID`, `e`.`Value1` ORDER BY `e`.`Value1`, `e`.`ParentID`) as `RowNumber`,
			`e`.`Value1`,
			`e`.`ParentID`
		FROM
			`Parent` `e`
	) `p`
WHERE
	`p`.`RowNumber` = 1
ORDER BY
	`p`.`Value1`,
	`p`.`ParentID`

