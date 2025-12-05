-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT DISTINCT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
		INNER JOIN `Parent` `u` ON `x`.`ParentID` = `u`.`ParentID` AND `u`.`Value1` > 5
WHERE
	`x`.`ChildID` > 30

