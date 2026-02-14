-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Coalesce((
		SELECT
			MAX(`a_Children`.`ChildID`) as `Max_1`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	), `p`.`Value1`)
FROM
	`Parent` `p`

