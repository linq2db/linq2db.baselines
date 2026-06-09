-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`FinishedOn`,
	`t`.`StartedOn`
FROM
	`NullableDateTimeSubtractionTable` `t`
ORDER BY
	`t`.`Id`

