BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int32
SET     @p = -2

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Month)
FROM
	`LinqDataTypes` `t`

