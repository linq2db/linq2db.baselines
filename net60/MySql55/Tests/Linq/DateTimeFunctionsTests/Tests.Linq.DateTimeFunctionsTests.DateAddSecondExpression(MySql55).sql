BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p Int32
SET     @p = 41

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Second)
FROM
	`LinqDataTypes` `t`

