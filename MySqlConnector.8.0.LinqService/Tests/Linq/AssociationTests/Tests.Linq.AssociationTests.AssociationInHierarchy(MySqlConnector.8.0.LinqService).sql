BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`o`.`ParentID`,
	`o`.`Value1`
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `o` ON `ch`.`ParentID` = `o`.`ParentID` AND `ch`.`ChildID` = 1

