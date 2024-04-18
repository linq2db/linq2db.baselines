BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			Max(`_`.`ParentID`)
		FROM
			`Child` `_`
		WHERE
			`p`.`ParentID` = `_`.`ParentID` AND `_`.`ParentID` < 0
	)
FROM
	`Parent` `p`

