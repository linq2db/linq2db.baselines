BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Children`.`ParentID` + 1
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`a_Children`.`ParentID` > 0

