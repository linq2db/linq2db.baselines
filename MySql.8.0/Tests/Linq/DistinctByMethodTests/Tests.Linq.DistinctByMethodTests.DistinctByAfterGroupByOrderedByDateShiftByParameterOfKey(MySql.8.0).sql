-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = -6

SELECT
	`t1`.`Key_1`,
	`t1`.`Count_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`Year_1` ORDER BY `e`.`c1` DESC) as `RowNumber`,
			`e`.`c1`,
			`e`.`Key_1`,
			`e`.`Count_1`
		FROM
			(
				SELECT
					`g_2`.`Year_1`,
					Date_Add(`g_2`.`Key_1`, Interval @p Hour) as `c1`,
					`g_2`.`Key_1`,
					COUNT(*) as `Count_1`
				FROM
					(
						SELECT
							`g_1`.`DateTimeValue` as `Key_1`,
							Extract(year from `g_1`.`DateTimeValue`) as `Year_1`
						FROM
							`LinqDataTypes` `g_1`
					) `g_2`
				GROUP BY
					`g_2`.`Key_1`,
					`g_2`.`Year_1`
			) `e`
	) `t1`
WHERE
	`t1`.`RowNumber` = 1
ORDER BY
	`t1`.`c1` DESC

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ID`,
	`t1`.`MoneyValue`,
	`t1`.`DateTimeValue`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`,
	`t1`.`BinaryValue`,
	`t1`.`SmallIntValue`,
	`t1`.`StringValue`
FROM
	`LinqDataTypes` `t1`

