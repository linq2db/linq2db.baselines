-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`GroupId`,
	SUM(`g_1`.`DataValue`),
	SUM(`g_1`.`DataValue`),
	SUM(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	SUM(CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	SUM(DISTINCT `g_1`.`DataValue`),
	SUM(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	SUM(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = 0 THEN `g_1`.`DataValue`
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
GROUP BY
	`g_1`.`GroupId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

