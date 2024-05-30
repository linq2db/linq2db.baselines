BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`pp`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`pp`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `pp`

