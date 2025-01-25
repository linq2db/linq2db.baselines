BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ParentID`
FROM
	`Parent` `sep`
		LEFT JOIN (
			SELECT
				`l`.`ParentID` + 1 as `Id`,
				`l`.`ParentID`
			FROM
				`Child` `l`
			LIMIT 1
		) `t1` ON 1=1

