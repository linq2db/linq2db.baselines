BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p_1`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			1 as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			0 as `val`
		FROM
			`Child` `ch`
	) `p_1`

