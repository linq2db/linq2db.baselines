BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 Double
SET     @p_1 = 2

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Month)
FROM
	`LinqDataTypes` `t`

