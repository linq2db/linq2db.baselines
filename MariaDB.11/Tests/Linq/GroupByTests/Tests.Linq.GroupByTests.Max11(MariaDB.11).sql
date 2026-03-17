-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	MAX(CASE
		WHEN `t1`.`ChildID` > 20 THEN 1
		ELSE 0
	END)
FROM
	`Child` `t1`

