-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Value_1`,
	`t1`.`HasValue`
FROM
	`Request` `a`
		LEFT JOIN LATERAL (
			SELECT
				`a_Metrics`.`Value` as `HasValue`,
				`a_Metrics`.`Value` IS NOT NULL as `Value_1`
			FROM
				`Metric` `a_Metrics`
			WHERE
				`a`.`Id` = `a_Metrics`.`RequestId`
			LIMIT 1
		) `t1` ON 1=1

