BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int32
SET     @p = 5

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Minute)
FROM
	`LinqDataTypes` `t`

