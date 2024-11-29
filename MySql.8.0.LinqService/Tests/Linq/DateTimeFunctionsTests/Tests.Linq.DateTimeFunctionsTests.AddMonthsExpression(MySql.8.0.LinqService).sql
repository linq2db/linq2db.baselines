BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Date Int32
SET     @Date = -2

SELECT
	Date(Date_Add(`t`.`DateTimeValue`, Interval @Date Month))
FROM
	`LinqDataTypes` `t`

