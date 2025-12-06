-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_Children`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`a_Children`.`ParentID` > 0

