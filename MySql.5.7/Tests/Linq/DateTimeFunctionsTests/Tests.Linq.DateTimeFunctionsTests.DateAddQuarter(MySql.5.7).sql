BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval -1 Quarter))
FROM
	`LinqDataTypes` `t`

