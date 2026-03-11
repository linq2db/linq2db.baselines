-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value Int32
SET     @Value = -1

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Value Quarter))
FROM
	`LinqDataTypes` `t`

