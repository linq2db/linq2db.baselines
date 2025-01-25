BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Parent` `p`

