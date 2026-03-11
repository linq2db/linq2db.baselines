-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`a_Metrics`.`Value` IS NOT NULL
		FROM
			`Metric` `a_Metrics`
		WHERE
			`a`.`Id` = `a_Metrics`.`RequestId`
		LIMIT 1
	),
	(
		SELECT
			`a_Metrics_1`.`Value`
		FROM
			`Metric` `a_Metrics_1`
		WHERE
			`a`.`Id` = `a_Metrics_1`.`RequestId`
		LIMIT 1
	)
FROM
	`Request` `a`

