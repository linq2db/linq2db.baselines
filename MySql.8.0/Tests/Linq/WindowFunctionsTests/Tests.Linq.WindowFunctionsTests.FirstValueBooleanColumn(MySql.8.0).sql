-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	FIRST_VALUE(`t`.`BoolValue`) OVER (ORDER BY `t`.`Id` DESC),
	FIRST_VALUE(`t`.`NullableBoolValue`) OVER (ORDER BY `t`.`Id` DESC),
	FIRST_VALUE(`t`.`IntValue` % 20 = 0) OVER (ORDER BY `t`.`Id` DESC)
FROM
	`WindowFunctionTestEntity` `t`
ORDER BY
	`t`.`Id`

