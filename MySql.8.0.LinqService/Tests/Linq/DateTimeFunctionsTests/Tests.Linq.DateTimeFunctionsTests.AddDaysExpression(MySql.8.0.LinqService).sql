BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 5

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Day))
FROM
	`LinqDataTypes` `t`

