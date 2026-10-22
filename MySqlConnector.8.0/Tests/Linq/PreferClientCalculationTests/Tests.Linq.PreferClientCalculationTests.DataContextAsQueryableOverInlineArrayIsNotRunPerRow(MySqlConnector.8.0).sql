-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`e`.`Id`,
	CASE
		WHEN 0 IN (
			SELECT
				`t1`.`item`
			FROM
				(
					SELECT `j`.`Value1` AS `item`
					UNION ALL
					SELECT 5) `t1`
		)
			THEN 1
		ELSE 0
	END
FROM
	`MissedJoinEntity` `e`
		LEFT JOIN `MissedJoinEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

