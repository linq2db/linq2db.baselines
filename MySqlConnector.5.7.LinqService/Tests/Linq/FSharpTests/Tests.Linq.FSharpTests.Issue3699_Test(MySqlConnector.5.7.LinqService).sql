BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`o`.`ParentID`,
	`o`.`Value1`,
	`pet`.`ParentID`,
	`pet`.`Value1`
FROM
	`Parent` `o`
		LEFT JOIN `Parent` `pet` ON `o`.`ParentID` = `pet`.`ParentID`

