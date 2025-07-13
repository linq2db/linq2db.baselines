BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	MAX(CASE
		WHEN `t1`.`ChildID` > 20 THEN 1
		ELSE 0
	END)
FROM
	`Child` `t1`

