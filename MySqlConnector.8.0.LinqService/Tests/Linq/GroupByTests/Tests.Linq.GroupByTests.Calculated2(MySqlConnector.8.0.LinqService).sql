BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			Concat(`ch`.`Key_1`, '2') as `c1`
		FROM
			(
				SELECT
					CASE
						WHEN `g_1`.`ParentID` > 2 THEN CASE
							WHEN `g_1`.`ParentID` > 3 THEN '1'
							ELSE '2'
						END
						ELSE '3'
					END as `Key_1`
				FROM
					`Child` `g_1`
			) `ch`
		GROUP BY
			`ch`.`Key_1`
	) `p`
WHERE
	`p`.`c1` = '22'

