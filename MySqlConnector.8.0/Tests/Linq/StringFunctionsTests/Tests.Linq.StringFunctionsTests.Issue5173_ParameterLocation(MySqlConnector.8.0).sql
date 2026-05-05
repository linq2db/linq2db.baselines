-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(CONCAT_WS('', 'test:', `grp_1`.`ch`) SEPARATOR ';')
FROM
	(
		SELECT
			`ch`.`item` % 10 as `Key_1`,
			`ch`.`item` as `ch`
		FROM
			`Parent` `grp`
				CROSS JOIN (
					SELECT 11 AS `item`
					UNION ALL
					SELECT 13) `ch`
	) `grp_1`
GROUP BY
	`grp_1`.`Key_1`

