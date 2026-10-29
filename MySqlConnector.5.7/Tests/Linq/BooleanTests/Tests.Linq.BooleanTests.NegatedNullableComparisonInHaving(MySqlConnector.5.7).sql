-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`g_1`.`ParentID` % 3
FROM
	`Parent` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `x`
		WHERE
			`g_1`.`ParentID` % 3 = `x`.`ParentID` % 3 AND (`x`.`Value1` <> 1 OR `x`.`Value1` IS NULL)
	)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`g_2`.`Key_1`,
	COUNT(CASE
		WHEN `g_2`.`c1` = 0 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			`g_1`.`ParentID` % 2 as `Key_1`,
			CASE
				WHEN `g_1`.`Value1` = 1 THEN 1
				ELSE 0
			END as `c1`
		FROM
			`Parent` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`
HAVING
	COUNT(CASE
		WHEN `g_2`.`c1` = 0 THEN 1
		ELSE NULL
	END) > 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

