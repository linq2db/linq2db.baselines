BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	`Parent` `p`
		LEFT JOIN `Child` `o` ON `p`.`ParentID` = `o`.`ParentID`

