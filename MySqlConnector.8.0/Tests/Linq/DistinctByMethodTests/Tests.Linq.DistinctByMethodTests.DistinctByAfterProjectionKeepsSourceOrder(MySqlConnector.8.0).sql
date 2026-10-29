-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`x`.`Value1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Value1` ORDER BY `e`.`ParentID` DESC) as `RowNumber`,
			`e`.`ParentID`,
			`e`.`Value1`
		FROM
			`Parent` `e`
	) `x`
WHERE
	`x`.`RowNumber` = 1
ORDER BY
	`x`.`ParentID` DESC

