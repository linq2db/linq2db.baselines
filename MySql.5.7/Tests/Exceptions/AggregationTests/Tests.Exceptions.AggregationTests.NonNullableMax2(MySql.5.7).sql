BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

