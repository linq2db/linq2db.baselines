-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval `t`.`SmallIntValue` Month)
FROM
	`LinqDataTypes` `t`

