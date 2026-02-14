-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`ParentID`,
	(
		SELECT
			COUNT(*) as `Count_1`
		FROM
			`Child` `a_Children`
		WHERE
			`t`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `t`

