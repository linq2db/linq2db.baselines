-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`GrandChildID` IN (1001, 1002)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1,
	1,
	1001
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1,
	2,
	1002
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`GrandChild` `gc`
WHERE
	`gc`.`ParentID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DELETE   `gc`
FROM
	`GrandChild` `gc`
		INNER JOIN `Parent` `a_Parent` ON `gc`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 1 AND `gc`.`GrandChildID` IN (1001, 1002)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`GrandChild` `gc`
WHERE
	`gc`.`ParentID` = 1

