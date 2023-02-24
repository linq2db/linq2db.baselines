BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 Int32
SET     @p_1 = 11

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Year)
FROM
	`LinqDataTypes` `t`

