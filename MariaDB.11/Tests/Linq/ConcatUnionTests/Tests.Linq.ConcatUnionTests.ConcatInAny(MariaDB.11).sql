BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		UNION ALL
		SELECT
			`p_1`.`ParentID`
		FROM
			`Parent` `p_1`
	) as `c1`

