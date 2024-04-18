BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

