BeforeExecute
-- MySqlConnector MySql

DELETE `p`
FROM
	`Parent` `p`
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			`Child` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`ParentID`
	)

