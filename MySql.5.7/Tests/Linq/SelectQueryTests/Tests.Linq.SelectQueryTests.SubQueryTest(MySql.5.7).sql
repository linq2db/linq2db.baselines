-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t_1`.`Id`,
	`t_1`.`Value`,
	`t2`.`Value1`,
	`t2`.`Value2`
FROM
	`SampleClass` `t_1`
		LEFT JOIN (
			SELECT
				`t1`.`Value1`,
				`t1`.`Value2`
			FROM
				(
					SELECT
						Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day) as `Value1`,
						Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
					FROM
						`SampleClass` `t`
					WHERE
						`t`.`Value` = 1
					UNION
					SELECT
						Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
						Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
				) `t1`
			LIMIT 1
		) `t2` ON 1=1

