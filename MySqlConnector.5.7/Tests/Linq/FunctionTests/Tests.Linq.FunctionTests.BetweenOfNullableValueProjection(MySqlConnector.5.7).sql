-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

