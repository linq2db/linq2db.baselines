-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`,
	`x`.`GrandChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)

