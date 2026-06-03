-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	LAG(`t`.`IntValue`, 2, 0) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

