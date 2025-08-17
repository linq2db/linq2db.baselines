BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t2`.`month_1`,
	`t2`.`year_1`,
	CAST(1 AS SIGNED)
FROM
	(
		SELECT
			Extract(month from `t1`.`DateTimeValue`) as `month_1`,
			Extract(year from `t1`.`DateTimeValue`) as `year_1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`
GROUP BY
	`t2`.`month_1`,
	`t2`.`year_1`
UNION
SELECT
	`t3`.`SmallIntValue`,
	`t3`.`SmallIntValue`,
	CAST(3 AS SIGNED)
FROM
	`LinqDataTypes` `t3`
UNION
SELECT
	Extract(year from `t4`.`DateTimeValue`),
	Extract(year from `t4`.`DateTimeValue`),
	CAST(2 AS SIGNED)
FROM
	`LinqDataTypes` `t4`

