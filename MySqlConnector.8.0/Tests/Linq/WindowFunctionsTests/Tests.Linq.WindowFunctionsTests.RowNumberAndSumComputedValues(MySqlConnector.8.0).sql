-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t`.`Id`,
	ROW_NUMBER() OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId`)
FROM
	`WindowFunctionTestEntity` `t`

