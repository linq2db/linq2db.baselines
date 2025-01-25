BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = @ParentID

