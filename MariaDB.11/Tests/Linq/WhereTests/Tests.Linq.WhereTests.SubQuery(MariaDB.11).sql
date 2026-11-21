-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	(`t`.`ParentID` * 1000) DIV 1000
FROM
	`Child` `t`
WHERE
	`t`.`ParentID` * 1000 > 2000

