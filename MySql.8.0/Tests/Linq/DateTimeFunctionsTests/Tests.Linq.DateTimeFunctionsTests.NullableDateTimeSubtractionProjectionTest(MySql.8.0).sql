-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`FinishedOn`,
	`t`.`StartedOn`
FROM
	`NullableDateTimeSubtractionTable` `t`
ORDER BY
	`t`.`Id`

