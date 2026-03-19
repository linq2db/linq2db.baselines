-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	20000,
	20000
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	10000,
	20000
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @ParentID Int32
SET     @ParentID = 20000

UPDATE
	`Child` `parent_1`,
	`Parent` `t1`
SET
	`parent_1`.`ParentID` = @ParentID
WHERE
	`t1`.`Value1` = 20000 AND `parent_1`.`ParentID` = `t1`.`ParentID`

