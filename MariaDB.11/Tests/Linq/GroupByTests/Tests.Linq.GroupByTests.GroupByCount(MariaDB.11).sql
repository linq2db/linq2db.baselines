-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`gr`.`ParentID`
		FROM
			`Child` `gr`
	) `t1`

