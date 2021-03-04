BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 Double
SET     @p_1 = 3

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Day)
FROM
	`LinqDataTypes` `t`

