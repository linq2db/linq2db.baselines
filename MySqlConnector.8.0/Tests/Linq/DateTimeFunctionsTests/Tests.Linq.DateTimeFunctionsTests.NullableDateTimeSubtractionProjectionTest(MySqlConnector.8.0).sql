-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`FinishedOn`,
	`t`.`StartedOn`
FROM
	`NullableDateTimeSubtractionTable` `t`
ORDER BY
	`t`.`Id`

