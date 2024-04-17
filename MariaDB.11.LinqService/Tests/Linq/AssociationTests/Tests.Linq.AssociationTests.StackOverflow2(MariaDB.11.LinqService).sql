BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			Count(*)
		FROM
			`Parent` `t1`
		WHERE
			`p`.`ParentID` = `t1`.`Value1`
	) <> 0

