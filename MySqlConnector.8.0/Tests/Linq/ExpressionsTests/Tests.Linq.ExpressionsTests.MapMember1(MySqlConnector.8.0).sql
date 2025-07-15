BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ChildID` > 0
	)
FROM
	`Parent` `p`

