﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t3`.`year_1`,
	`t3`.`year_2`,
	`t3`.`int_1`
FROM
	(
		SELECT
			`_`.`SmallIntValue` as `year_1`,
			`_`.`SmallIntValue` as `year_2`,
			3 as `int_1`
		FROM
			`LinqDataTypes` `_`
		UNION
		SELECT
			`t2`.`month_1` as `year_1`,
			`t2`.`year_1` as `year_2`,
			`t2`.`int_1`
		FROM
			(
				SELECT
					`t1`.`month_1`,
					`t1`.`year_1`,
					1 as `int_1`
				FROM
					(
						SELECT
							Extract(month from `selectParam`.`DateTimeValue`) as `month_1`,
							Extract(year from `selectParam`.`DateTimeValue`) as `year_1`
						FROM
							`LinqDataTypes` `selectParam`
					) `t1`
				GROUP BY
					`t1`.`month_1`,
					`t1`.`year_1`
			) `t2`
	) `t3`
UNION
SELECT
	Extract(year from `_1`.`DateTimeValue`),
	Extract(year from `_1`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_1`

