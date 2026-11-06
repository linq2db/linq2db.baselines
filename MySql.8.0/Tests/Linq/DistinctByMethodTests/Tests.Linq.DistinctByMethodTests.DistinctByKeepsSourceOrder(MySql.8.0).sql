-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Value1` ORDER BY `e`.`ParentID` DESC) as `RowNumber`,
			`e`.`ParentID`
		FROM
			`Parent` `e`
	) `p`
WHERE
	`p`.`RowNumber` = 1
ORDER BY
	`p`.`ParentID` DESC

