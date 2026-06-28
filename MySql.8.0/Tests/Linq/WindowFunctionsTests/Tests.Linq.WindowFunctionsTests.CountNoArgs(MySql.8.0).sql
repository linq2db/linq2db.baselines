-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	COUNT(*) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

