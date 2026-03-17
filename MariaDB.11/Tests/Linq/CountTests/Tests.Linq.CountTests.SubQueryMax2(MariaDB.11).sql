-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`t1`.`ParentID` = `a_Children`.`ParentID`
	))
FROM
	`Parent` `t1`

