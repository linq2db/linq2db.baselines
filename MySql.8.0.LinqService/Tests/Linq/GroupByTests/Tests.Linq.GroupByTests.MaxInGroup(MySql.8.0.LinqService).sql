BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_1`.`GroupId`,
	MAX(`g_1`.`DataValue`),
	MAX(`g_1`.`DataValue`),
	MAX(CASE
		WHEN `g_1`.`DataValue` % 2 = CAST(0 AS DOUBLE) THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(CASE
		WHEN `g_1`.`DataValue` % 2 = CAST(0 AS DOUBLE) THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(DISTINCT `g_1`.`DataValue`),
	MAX(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = CAST(0 AS DOUBLE) THEN `g_1`.`DataValue`
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN `g_1`.`DataValue` % 2 = CAST(0 AS DOUBLE) THEN `g_1`.`DataValue`
		ELSE NULL
	END)
FROM
	`AggregationData` `g_1`
GROUP BY
	`g_1`.`GroupId`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

