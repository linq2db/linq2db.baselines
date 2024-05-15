BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 1001

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` > 1000

