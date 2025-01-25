BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 5

SELECT
	Extract(minute from Date_Add(`t`.`DateTimeValue`, Interval @p Minute))
FROM
	`LinqDataTypes` `t`

