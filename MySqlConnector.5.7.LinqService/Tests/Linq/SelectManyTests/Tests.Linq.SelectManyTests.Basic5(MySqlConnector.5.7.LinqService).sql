BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_GrandChildren`.`ParentID`,
	`a_GrandChildren`.`ChildID`,
	`a_GrandChildren`.`GrandChildID`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `a_Parent` ON `t`.`ParentID` = `a_Parent`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Parent`.`ParentID` IS NOT NULL AND (`a_Parent`.`ParentID` = `a_GrandChildren`.`ParentID`)

