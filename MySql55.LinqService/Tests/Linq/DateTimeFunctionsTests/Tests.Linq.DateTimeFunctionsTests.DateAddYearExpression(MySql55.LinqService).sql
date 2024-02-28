BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int32
SET     @p = 11

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Year)
FROM
	`LinqDataTypes` `t`

