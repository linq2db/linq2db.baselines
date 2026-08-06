-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`GroupId`,
	COUNT(*),
	COUNT(CASE
		WHEN `t`.`DataValue` % 2 = 0 THEN 1
		ELSE NULL
	END),
	COUNT(DISTINCT `t`.`DataValue`)
FROM
	`AggregationData` `t`
WHERE
	`t`.`DataValue` IS NOT NULL
GROUP BY
	`t`.`GroupId`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

