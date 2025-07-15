BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
		GROUP BY
			`gr`.`ParentID`
	) `t1`

