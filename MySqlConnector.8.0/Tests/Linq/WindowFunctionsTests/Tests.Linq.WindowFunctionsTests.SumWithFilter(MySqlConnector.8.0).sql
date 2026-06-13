-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	SUM(CASE
		WHEN `t`.`CategoryId` = 1 THEN `t`.`IntValue`
		ELSE NULL
	END) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

