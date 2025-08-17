BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

DELETE   `a_GrandChildren`
FROM
	`Parent` `x`
		INNER JOIN `Child` `a_Children` ON `x`.`ParentID` = `a_Children`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
WHERE
	`x`.`ParentID` IN (0, 0)

