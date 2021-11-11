BeforeExecute
-- MySql MySql.Official MySql
DECLARE @p_1 Int32
SET     @p_1 = 41

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p_1 Second)
FROM
	`LinqDataTypes` `t`

