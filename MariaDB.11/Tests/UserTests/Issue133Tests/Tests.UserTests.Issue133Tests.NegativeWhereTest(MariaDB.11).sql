-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM(`t1`.`ParentID`)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
HAVING
	SUM(`t1`.`ParentID`) <> 36

