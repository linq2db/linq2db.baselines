-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(CASE
		WHEN `t`.`IntValue` > 20 THEN 1
		ELSE NULL
	END) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

