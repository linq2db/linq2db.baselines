BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Int32
SET     @p = -35

SELECT
	Date_Add(`t`.`DateTimeValue`, Interval @p Second)
FROM
	`LinqDataTypes` `t`

