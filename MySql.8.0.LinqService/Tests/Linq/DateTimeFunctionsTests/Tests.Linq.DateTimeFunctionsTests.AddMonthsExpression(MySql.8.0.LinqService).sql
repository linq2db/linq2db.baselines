BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = -2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @p Month))
FROM
	`LinqDataTypes` `t`

