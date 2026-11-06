-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `t1`

