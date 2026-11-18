-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`p`.`ParentID`,
	CASE
		WHEN `p`.`Value1` BETWEEN 1 AND 3 THEN 1
		ELSE 0
	END,
	CASE
		WHEN `p`.`Value1` NOT BETWEEN 1 AND 3 THEN 1
		ELSE 0
	END
FROM
	`Parent` `p`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

