BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Month_1`,
	`t1`.`Year_1`,
	1
FROM
	(
		SELECT
			Extract(month from `_`.`DateTimeValue`) as `Month_1`,
			Extract(year from `_`.`DateTimeValue`) as `Year_1`
		FROM
			`LinqDataTypes` `_`
	) `t1`
GROUP BY
	`t1`.`Month_1`,
	`t1`.`Year_1`
UNION
SELECT
	Cast(`_1`.`SmallIntValue` as SIGNED),
	Cast(`_1`.`SmallIntValue` as SIGNED),
	3
FROM
	`LinqDataTypes` `_1`
UNION
SELECT
	Extract(year from `_2`.`DateTimeValue`),
	Extract(year from `_2`.`DateTimeValue`),
	2
FROM
	`LinqDataTypes` `_2`

