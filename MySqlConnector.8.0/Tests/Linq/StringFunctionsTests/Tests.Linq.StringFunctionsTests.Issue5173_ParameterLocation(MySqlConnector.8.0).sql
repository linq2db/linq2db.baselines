-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	GROUP_CONCAT(Concat('test:', CAST(`grp_1`.`ch` AS CHAR(11))) SEPARATOR ';')
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
		ORDER BY
			`grp`.`ParentID`
	) `grp_1`
GROUP BY
	`grp_1`.`Key_1`

