-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	FIRST_VALUE(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

