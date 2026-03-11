-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 11

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Year))
FROM
	`LinqDataTypes` `t`

