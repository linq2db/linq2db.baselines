BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`Child` `c_1`
		INNER JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
SET
	`c_1`.`ChildID` = `c_1`.`ChildID` + 1
WHERE
	`c_1`.`ChildID` = @id AND `a_Parent`.`Value1` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @p Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @p

