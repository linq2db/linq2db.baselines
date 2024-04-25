BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID
LIMIT 1

