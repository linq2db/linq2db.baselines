-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`

