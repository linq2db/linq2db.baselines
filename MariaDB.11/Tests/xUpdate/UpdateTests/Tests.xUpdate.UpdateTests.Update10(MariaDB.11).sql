BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @id

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id Int32
SET     @id = 1001

UPDATE
	`Child` `c_1`,
	`Parent` `p`
		INNER JOIN `Child` `c_2` ON `p`.`ParentID` = `c_2`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_2`.`ParentID` = `a_Parent`.`ParentID`
SET
	`c_1`.`ChildID` = `c_2`.`ChildID` + 1,
	`c_1`.`ParentID` = `p`.`ParentID`
WHERE
	`c_2`.`ChildID` = @id AND
	`a_Parent`.`Value1` = 1 AND
	`c_1`.`ParentID` = `c_2`.`ParentID` AND
	`c_1`.`ChildID` = `c_2`.`ChildID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = @p

