BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 22

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Hour)
FROM
	`LinqDataTypes` `t`

