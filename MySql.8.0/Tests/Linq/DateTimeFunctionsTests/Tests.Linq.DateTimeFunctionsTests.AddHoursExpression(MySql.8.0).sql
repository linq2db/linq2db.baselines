BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Hour Int32
SET     @Hour = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @Hour Hour))
FROM
	`LinqDataTypes` `t`

