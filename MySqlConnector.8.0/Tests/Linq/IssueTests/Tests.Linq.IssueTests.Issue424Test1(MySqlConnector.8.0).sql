-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t2`.`ParentID`,
	`t2`.`Value1`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
	) `t2`
ORDER BY
	`t2`.`ParentID`
LIMIT @take

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

