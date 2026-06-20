-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	`t`.`Value`,
	`s`.`Key_1`,
	`s`.`SecondValue`
FROM
	`SampleClass` `t`
		INNER JOIN (
			SELECT
				1 as `Key_1`,
				3 as `SecondValue`
		) `s` ON 1 = `t`.`Id`

