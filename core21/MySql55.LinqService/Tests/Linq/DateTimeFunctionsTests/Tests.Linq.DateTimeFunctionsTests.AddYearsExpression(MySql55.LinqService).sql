BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 1

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Year)
FROM
	`LinqDataTypes` `t`

