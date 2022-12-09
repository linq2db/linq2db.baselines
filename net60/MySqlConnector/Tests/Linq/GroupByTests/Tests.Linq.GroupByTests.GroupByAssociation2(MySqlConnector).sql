BeforeExecute
-- MySqlConnector MySql

SELECT
	`g_1`.`Value1`
FROM
	(
		SELECT
			Count(*) as `c1`,
			`t2`.`c1` as `c1_1`,
			`t2`.`Value1`
		FROM
			(
				SELECT
					`a_Parent`.`ParentID` as `c1`,
					`a_Parent`.`Value1`
				FROM
					`GrandChild` `t1`
						INNER JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`
			) `t2`
		GROUP BY
			`t2`.`c1`,
			`t2`.`Value1`
	) `g_1`
WHERE
	`g_1`.`c1` > 2 AND (`g_1`.`c1_1` <> 1 OR `g_1`.`c1_1` IS NULL)

