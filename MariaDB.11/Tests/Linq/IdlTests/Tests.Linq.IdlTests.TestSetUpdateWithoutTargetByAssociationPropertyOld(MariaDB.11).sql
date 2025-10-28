BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	20000
)

BeforeExecute
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value1 Int32
SET     @Value1 = 5

UPDATE
	`Parent` `a_Parent`,
	`Child` `child_1`
SET
	`a_Parent`.`Value1` = @Value1
WHERE
	`child_1`.`ChildID` = 10000 AND `child_1`.`ParentID` = `a_Parent`.`ParentID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` = 10000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` = 20000

