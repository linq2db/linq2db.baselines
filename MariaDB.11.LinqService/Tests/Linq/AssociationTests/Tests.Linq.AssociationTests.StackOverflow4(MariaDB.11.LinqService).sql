BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Parent` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`Value1`
	)
FROM
	`Parent` `p`

