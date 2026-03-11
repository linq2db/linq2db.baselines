-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t1_1`
		WHERE
			`t1`.`ParentID` = `t1_1`.`ParentID`
	)
FROM
	`Parent` `t1`

