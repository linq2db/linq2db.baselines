-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Id`,
	`t`.`Value`,
	(
		SELECT
			`t1`.`Value1`
		FROM
			(
				SELECT
					Date_Add(CURRENT_TIMESTAMP, Interval `t_1`.`Value` Day) as `Value1`,
					Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
				FROM
					`SampleClass` `t_1`
				WHERE
					`t_1`.`Value` = 1
				UNION
				SELECT
					Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
					Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
			) `t1`
		LIMIT 1
	),
	(
		SELECT
			`t2`.`Value2`
		FROM
			(
				SELECT
					Date_Add(CURRENT_TIMESTAMP, Interval `t_2`.`Value` Day) as `Value1`,
					Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
				FROM
					`SampleClass` `t_2`
				WHERE
					`t_2`.`Value` = 1
				UNION
				SELECT
					Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
					Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
			) `t2`
		LIMIT 1
	)
FROM
	`SampleClass` `t`

