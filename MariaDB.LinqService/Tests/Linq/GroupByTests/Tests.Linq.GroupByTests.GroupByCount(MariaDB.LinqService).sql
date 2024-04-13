BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
		GROUP BY
			`gr`.`ParentID`
	) `t1`

