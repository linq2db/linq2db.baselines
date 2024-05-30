BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = -8

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @p Minute))
FROM
	`LinqDataTypes` `t`

