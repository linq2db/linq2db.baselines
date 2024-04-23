BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = 3

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

