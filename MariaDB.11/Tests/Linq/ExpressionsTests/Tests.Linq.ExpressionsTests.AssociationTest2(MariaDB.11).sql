BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`gc`.`ParentID`,
	`gc`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `cp`
		INNER JOIN `GrandChild` `gc` ON `cp`.`ParentID` = `gc`.`ParentID` AND `gc`.`ChildID` = 22

