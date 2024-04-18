BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Max(`ch`.`ChildID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ChildID`

