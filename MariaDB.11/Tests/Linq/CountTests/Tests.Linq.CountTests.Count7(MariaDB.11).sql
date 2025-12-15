-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	) > 2

