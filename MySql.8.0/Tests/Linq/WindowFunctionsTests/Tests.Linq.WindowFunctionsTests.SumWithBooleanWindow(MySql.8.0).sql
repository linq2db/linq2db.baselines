-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`IntValue` = 20, `t`.`Id`),
	SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`IntValue` = 20 ORDER BY `t`.`Id`),
	SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`NullableIntValue` IS NOT NULL ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

