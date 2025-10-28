BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE   `a_GrandChildren`
FROM
	`Parent` `gc`
		INNER JOIN `Child` `a_Children` ON `gc`.`ParentID` = `a_Children`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ParentID` = `a_GrandChildren`.`ParentID` AND `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
WHERE
	`gc`.`ParentID` IN (1001)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

