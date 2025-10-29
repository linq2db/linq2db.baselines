-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t7`.`Key_1`,
	`t7`.`COUNT_1`,
	`t7`.`COUNT_2`,
	`t7`.`COUNT_3`,
	`t7`.`COUNT_4`,
	`t1`.`COUNT_1`,
	`t3`.`COUNT_1`,
	`t4`.`COUNT_1`,
	`t7`.`COUNT_5`,
	`t6`.`COUNT_1`
FROM
	(
		SELECT
			`t`.`GroupId` as `Key_1`,
			COUNT(*) as `COUNT_1`,
			COUNT(CASE
				WHEN `t`.`DataValue` % 2 = 0 THEN 1
				ELSE NULL
			END) as `COUNT_2`,
			COUNT(*) as `COUNT_3`,
			COUNT(DISTINCT `t`.`DataValue`) as `COUNT_4`,
			COUNT(CASE
				WHEN `t`.`DataValue` % 2 = 0 THEN 1
				ELSE NULL
			END) as `COUNT_5`
		FROM
			`AggregationData` `t`
		WHERE
			`t`.`DataValue` IS NOT NULL
		GROUP BY
			`t`.`GroupId`
	) `t7`
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				(
					SELECT DISTINCT
						`x`.`DataValue`
					FROM
						`AggregationData` `x`
					WHERE
						`x`.`DataValue` IS NOT NULL AND `t7`.`Key_1` = `x`.`GroupId`
				) `x_1`
			WHERE
				`x_1`.`DataValue` % 2 = 0
		) `t1` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				(
					SELECT DISTINCT
						`t_1`.`DataValue`
					FROM
						`AggregationData` `t_1`
					WHERE
						`t_1`.`DataValue` IS NOT NULL AND `t7`.`Key_1` = `t_1`.`GroupId` AND
						`t_1`.`DataValue` % 2 = 0
				) `t2`
		) `t3` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				(
					SELECT DISTINCT
						`x_2`.`DataValue`
					FROM
						`AggregationData` `x_2`
					WHERE
						`x_2`.`DataValue` IS NOT NULL AND `t7`.`Key_1` = `x_2`.`GroupId` AND
						`x_2`.`DataValue` % 2 = 0
				) `x_3`
			WHERE
				`x_3`.`DataValue` % 2 = 0
		) `t4` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as `COUNT_1`
			FROM
				(
					SELECT DISTINCT
						`t_2`.`DataValue`
					FROM
						`AggregationData` `t_2`
					WHERE
						`t_2`.`DataValue` IS NOT NULL AND `t7`.`Key_1` = `t_2`.`GroupId` AND
						`t_2`.`DataValue` % 2 = 0
				) `t5`
		) `t6` ON 1=1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`GroupId`,
	`t1`.`DataValue`
FROM
	`AggregationData` `t1`

