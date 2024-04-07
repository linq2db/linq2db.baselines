BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p Int32
SET     @p = 22

SELECT
	Extract(hour from Date_Add(`t`.`DateTimeValue`, Interval @p Hour))
FROM
	`LinqDataTypes` `t`

