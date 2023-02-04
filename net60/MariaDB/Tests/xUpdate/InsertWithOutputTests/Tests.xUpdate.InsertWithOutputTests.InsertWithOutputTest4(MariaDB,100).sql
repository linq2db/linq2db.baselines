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

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

