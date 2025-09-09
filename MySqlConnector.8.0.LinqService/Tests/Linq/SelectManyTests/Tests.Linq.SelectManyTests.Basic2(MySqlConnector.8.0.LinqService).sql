BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`ParentID` + 1
FROM
	`Parent` `p`
		CROSS JOIN `Child` `t1`

