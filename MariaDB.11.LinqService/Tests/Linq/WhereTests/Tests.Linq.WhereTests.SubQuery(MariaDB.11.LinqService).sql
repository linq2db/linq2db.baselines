BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`ch`.`ParentID` * 1000
FROM
	`Child` `ch`
WHERE
	`ch`.`ParentID` * 1000 > 2000

