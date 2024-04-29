BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`c2`.`ParentID`
FROM
	`Child` `c2`
GROUP BY
	`c2`.`ParentID`
ORDER BY
	`c2`.`ParentID`

