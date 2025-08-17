BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t2`.`year_1`,
	`t2`.`year_1`,
	`t2`.`int_1`
FROM
	(
		SELECT
			`t1`.`SmallIntValue` as `year_1`,
			CAST(3 AS SIGNED) as `int_1`
		FROM
			`LinqDataTypes` `t1`
	) `t2`
UNION
SELECT
	`t4`.`month_1`,
	`t4`.`year_1`,
	CAST(1 AS SIGNED)
FROM
	(
		SELECT
			Extract(month from `t3`.`DateTimeValue`) as `month_1`,
			Extract(year from `t3`.`DateTimeValue`) as `year_1`
		FROM
			`LinqDataTypes` `t3`
	) `t4`
GROUP BY
	`t4`.`month_1`,
	`t4`.`year_1`
UNION
SELECT
	Extract(year from `t5`.`DateTimeValue`),
	Extract(year from `t5`.`DateTimeValue`),
	CAST(2 AS SIGNED)
FROM
	`LinqDataTypes` `t5`

