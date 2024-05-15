BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `a_Children`
		WHERE
			`Parent`.`ParentID` = `a_Children`.`ParentID`
	) AND
	`Parent`.`ParentID` > 100

