-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value Int32
SET     @Value = 1

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Value Hour))
FROM
	`LinqDataTypes` `t`

