-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`Id`,
	CAST(`t`.`IntValue` AS DOUBLE) / NULLIF(CAST(SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId`) AS DOUBLE), 0)
FROM
	`WindowFunctionTestEntity` `t`

