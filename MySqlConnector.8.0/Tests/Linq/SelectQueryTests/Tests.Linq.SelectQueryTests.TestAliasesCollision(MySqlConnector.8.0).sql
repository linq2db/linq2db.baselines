BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`child_1`.`ParentID`,
	`child_1`.`ChildID`
FROM
	`Child` `child_1`
WHERE
	`child_1`.`ChildID` = -1

