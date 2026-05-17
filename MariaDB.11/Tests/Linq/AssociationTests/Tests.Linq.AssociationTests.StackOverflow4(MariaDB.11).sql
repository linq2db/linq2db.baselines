-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`Value1`
	)
FROM
	`Parent` `p`

