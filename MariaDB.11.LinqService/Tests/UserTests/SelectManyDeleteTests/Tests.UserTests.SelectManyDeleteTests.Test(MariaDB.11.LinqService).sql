BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

DELETE   `a_GrandChildren`
FROM
	`Parent` `x`
		INNER JOIN `Child` `a_Children` ON `x`.`ParentID` = `a_Children`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
WHERE
	`x`.`ParentID` IN (0, 0)

