BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			GROUP_CONCAT(CAST(`a_Children`.`ChildID` AS CHAR(11)) SEPARATOR ', ')
		FROM
			`Child` `a_Children`
		WHERE
			`s`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `s`

