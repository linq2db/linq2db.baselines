BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`e`.`ChildID`
FROM
	`GrandChild` `e`
WHERE
	`e`.`ChildID` = 1 AND `e`.`ChildID` IS NOT NULL

