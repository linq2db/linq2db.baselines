-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @baseDate Datetime -- DateTime
SET     @baseDate = '2000-01-01'

SELECT
	`t1`.`Key_1`,
	`t1`.`Count_1`
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY `e`.`c1` ORDER BY `e`.`TotalDays` DESC, `e`.`Key_1`) as `RowNumber`,
			`e`.`TotalDays`,
			`e`.`Key_1`,
			`e`.`Count_1`
		FROM
			(
				SELECT
					`g_2`.`Year_1` > 0 as `c1`,
					CAST(TimestampDiff(Microsecond, @baseDate, `g_2`.`Key_1`) * 10 AS DOUBLE) / 864000000000 as `TotalDays`,
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
	`t1`.`TotalDays` DESC,
	`t1`.`Key_1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

