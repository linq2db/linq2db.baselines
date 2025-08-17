BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

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

