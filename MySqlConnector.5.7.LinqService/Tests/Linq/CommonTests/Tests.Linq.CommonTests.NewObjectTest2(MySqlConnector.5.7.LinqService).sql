BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `j` ON `p`.`ParentID` = `j`.`ParentID`
WHERE
	`p`.`ParentID` = 1

