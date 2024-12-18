BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = `t1`.`ParentID` AND `a_Parent`.`ParentID` IS NOT NULL
	))
FROM
	`Parent` `t1`

