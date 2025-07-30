BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	`Child` `a_Children`,
	`Parent` `x`
		INNER JOIN `Child` `a_Children_1` ON `x`.`ParentID` = `a_Children_1`.`ParentID`
SET
	`a_Children`.`ChildID` = @ChildID
WHERE
	1 = 0

