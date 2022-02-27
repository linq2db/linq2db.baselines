BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = -8

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p1 Minute)
FROM
	`LinqDataTypes` `t`

