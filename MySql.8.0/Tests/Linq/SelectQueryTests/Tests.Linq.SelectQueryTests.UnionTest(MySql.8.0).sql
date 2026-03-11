-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day)
FROM
	`SampleClass` `t`
WHERE
	`t`.`Value` = 1
UNION
SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 3 Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 4 Day)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`v_1`.`Value2`
FROM
	(
		SELECT
			Date_Add(CURRENT_TIMESTAMP, Interval `v`.`Value` Day) as `Value1`,
			Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
		FROM
			`SampleClass` `v`
		WHERE
			`v`.`Value` = 1
		UNION
		SELECT
			Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
			Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
	) `v_1`

