BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001
DECLARE @param Int32
SET     @param = 100

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
SELECT
	`c_1`.`ParentID`,
	@id
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 11
RETURNING
	`Child`.`ChildID` + `Child`.`ParentID` + @param

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @ChildID Int32
SET     @ChildID = 100

SELECT
	`c_1`.`ChildID` + `c_1`.`ParentID` + @ChildID
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

