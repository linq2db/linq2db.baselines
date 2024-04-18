BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`o`.`ParentID`,
	`o`.`Value1`
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `o` ON `ch`.`ParentID` = `o`.`ParentID` AND `ch`.`ChildID` = 1

