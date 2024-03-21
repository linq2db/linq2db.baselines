BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 5

SELECT
	Cast(Date_Add(`t`.`DateTimeValue`, Interval @p Day) as Date)
FROM
	`LinqDataTypes` `t`

