-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	LEAD(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	LEAD(`t`.`IntValue`, 2) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	LEAD(`t`.`IntValue`, 2, 0) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	LAG(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	LAG(`t`.`IntValue`, 2) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	LAG(`t`.`IntValue`, 2, 0) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

