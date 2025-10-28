BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Parent` `p1`
		WHERE
			`p1`.`ParentID` = `p`.`ParentID`
	)
FROM
	`Parent` `p`

