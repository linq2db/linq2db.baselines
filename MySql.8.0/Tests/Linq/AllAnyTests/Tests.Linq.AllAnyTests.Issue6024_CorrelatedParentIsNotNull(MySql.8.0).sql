-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID` AND `p`.`Value1` IS NOT NULL
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

