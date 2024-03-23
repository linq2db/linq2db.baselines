BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`t1`.`V`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`c_1`.`ParentID` + 1 as `V`
			FROM
				`Child` `c_1`
			LIMIT 1
		) `t1` ON 1=1

