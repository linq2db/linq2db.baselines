-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Hour Int32
SET     @Hour = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Hour Hour))
FROM
	`LinqDataTypes` `t`

