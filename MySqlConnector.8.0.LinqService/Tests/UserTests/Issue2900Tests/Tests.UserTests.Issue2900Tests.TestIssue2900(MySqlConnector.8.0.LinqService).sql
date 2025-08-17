BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`t1`.`cond_1`,
	`t1`.`cond`
FROM
	`Request` `a`
		LEFT JOIN LATERAL (
			SELECT
				`a_Metrics`.`Value` as `cond`,
				`a_Metrics`.`Value` IS NOT NULL as `cond_1`
			FROM
				`Metric` `a_Metrics`
			WHERE
				`a`.`Id` = `a_Metrics`.`RequestId`
			LIMIT 1
		) `t1` ON 1=1

