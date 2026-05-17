-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Coalesce((
		SELECT
			SUM(`a_Children`.`ParentID` * `a_Children`.`ChildID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` > 2
	), 0)
FROM
	`Parent` `p`

