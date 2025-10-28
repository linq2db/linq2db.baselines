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

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE   `a_Children`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

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

