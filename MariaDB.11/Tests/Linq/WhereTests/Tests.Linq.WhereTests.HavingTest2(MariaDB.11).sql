BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
GROUP BY
	`c_1`.`ParentID`
HAVING
	COUNT(*) > 1

