-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(CASE
		WHEN `t`.`IntValue` > 20 THEN 1
		ELSE NULL
	END) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

