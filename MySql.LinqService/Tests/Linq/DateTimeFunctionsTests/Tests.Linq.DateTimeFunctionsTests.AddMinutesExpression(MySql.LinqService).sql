BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = -8

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Minute)
FROM
	`LinqDataTypes` `t`

