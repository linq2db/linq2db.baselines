BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`c1`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`c_1`.`ParentID` + 1 as `c1`
			FROM
				`Child` `c_1`
			LIMIT 1
		) `t1` ON 1=1

