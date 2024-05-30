BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` + 100 IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	)

