BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ParentID`
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`
ORDER BY
	`t1`.`ParentID`

