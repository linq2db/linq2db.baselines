-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = 3

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Day))
FROM
	`LinqDataTypes` `t`

