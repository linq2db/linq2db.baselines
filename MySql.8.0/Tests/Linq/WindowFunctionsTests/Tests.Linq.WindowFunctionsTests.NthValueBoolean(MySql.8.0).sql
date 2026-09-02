-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`,
	NTH_VALUE(`t`.`IntValue` = 20, 2) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	NTH_VALUE(`t`.`IntValue`, 2) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`
ORDER BY
	`t`.`Id`

